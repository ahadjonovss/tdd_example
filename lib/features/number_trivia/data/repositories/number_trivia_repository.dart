import 'package:dartz/dartz.dart';
import 'package:tdd_example/core/error/exceptions.dart';
import 'package:tdd_example/core/error/failures.dart';
import 'package:tdd_example/core/platform/network_info.dart';
import 'package:tdd_example/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd_example/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:tdd_example/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:tdd_example/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_example/features/number_trivia/domain/repositories/number_trivia_repository.dart';

typedef Future<NumberTrivia> _ConcreteOrRandomChooser();

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  NumberTriviaRemoteDataSource remoteDataSource;
  NumberTriviaLocalDataSource localDataSource;
  NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl(
      {required this.networkInfo,
      required this.remoteDataSource,
      required this.localDataSource});

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumber(int number) async {
    return await _getTrivia(() {
      return remoteDataSource.getConcreteNumber(number);
    });
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumber() async {
    return await _getTrivia(() {
      return remoteDataSource.getRandomNumberTrivia();
    });
  }

  Future<Either<Failure, NumberTrivia>> _getTrivia(
      _ConcreteOrRandomChooser getConcreteOrRandom) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await getConcreteOrRandom();
        localDataSource.cacheNumberTrivia(remoteTrivia as NumberTriviaModel);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberTrivia();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
