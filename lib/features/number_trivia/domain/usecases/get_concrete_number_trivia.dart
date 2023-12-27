import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_example/core/error/failures.dart';
import 'package:tdd_example/core/usecases/usecase.dart';
import 'package:tdd_example/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_example/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, int> {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(int number) async {
    return await repository.getConcreteNumber(number);
  }
}

class Params extends Equatable {
  int number;
  Params(this.number);

  @override
  List<Object?> get props => [number];
}
