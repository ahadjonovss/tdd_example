// ignore_for_file: overridden_fields

import 'package:tdd_example/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  @override
  final String text;
  @override
  final int number;

  const NumberTriviaModel({required this.text, required this.number})
      : super(text: '', number: 0);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(text: json['text'], number: json['number']);
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'number': number};
  }
}
