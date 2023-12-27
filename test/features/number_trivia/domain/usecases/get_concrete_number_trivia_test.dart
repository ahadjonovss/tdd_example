// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:tdd_example/features/number_trivia/domain/entities/number_trivia.dart';
// import 'package:tdd_example/features/number_trivia/domain/repositories/number_trivia_repository.dart';
// import 'package:tdd_example/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
//
// class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository{
//
// }
//
//
// void main(){
//   GetConcreteNumberTrivia? useCase;
//   MockNumberTriviaRepository? mockNumberTriviaRepository;
//   setUp(() {
//     mockNumberTriviaRepository = MockNumberTriviaRepository();
//     useCase = GetConcreteNumberTrivia(mockNumberTriviaRepository!);
//   });
//
//
//   final tNumber = 1;
//   final tNumberTrivia = NumberTrivia(text: 'test', number: 1)
//
//   test('some', () {
//     when(mockNumberTriviaRepository!.getConcreteNumber(any??1)).thenAnswer((realInvocation) => Right(tNumberTrivia));
//   });
// }