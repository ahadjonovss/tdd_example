import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_example/core/utils/input_converter.dart';
import 'package:tdd_example/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_example/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:tdd_example/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaBloc(
      {required this.getConcreteNumberTrivia,
      required this.getRandomNumberTrivia,
      required this.inputConverter})
      : super(Empty()) {
    on<NumberTriviaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;
}
