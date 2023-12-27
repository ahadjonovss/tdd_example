part of 'number_trivia_bloc.dart';

abstract class NumberTriviaEvent extends Equatable {
  const NumberTriviaEvent();
}

class GetTriviaForConcreteNumberEvent extends NumberTriviaEvent {
  final String numberString;
  int get number => int.parse(numberString);
  const GetTriviaForConcreteNumberEvent(this.numberString);

  @override
  List<Object?> get props => [numberString];
}

class GetTriviaForRandomNumber extends NumberTriviaEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
