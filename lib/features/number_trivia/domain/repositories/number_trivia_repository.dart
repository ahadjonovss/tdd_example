import 'package:dartz/dartz.dart';
import 'package:tdd_example/core/error/failures.dart';
import 'package:tdd_example/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumber(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumber();
}
