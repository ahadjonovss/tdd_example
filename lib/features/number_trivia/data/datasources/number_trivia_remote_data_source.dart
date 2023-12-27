import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tdd_example/core/error/exceptions.dart';
import 'package:tdd_example/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource {
  //Throws ServerException for all errors
  Future<NumberTriviaModel> getConcreteNumber(int number);

  //Throws ServerException for all errors
  Future<NumberTriviaModel> getRandomNumberTrivia();
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final http.Client client;
  NumberTriviaRemoteDataSourceImpl(this.client);

  @override
  Future<NumberTriviaModel> getConcreteNumber(int number) =>
      _getTriviaFromUrl("https://numbersapi.com/$number");

  @override
  Future<NumberTriviaModel> getRandomNumberTrivia() =>
      _getTriviaFromUrl("https://numbersapi.com/random");

  Future<NumberTriviaModel> _getTriviaFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'Application/json'});

    if (response.statusCode == 200) {
      return NumberTriviaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
