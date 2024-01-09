import 'dart:convert';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(number: 1, text: "test text");

  test('NumberTrivia model extends entity', () {
    expect(tNumberTriviaModel, isA<NumberTrivia>);
  });

  group('sending json data input', () {

    test('json data with intiger number ', () {

      Map<String , dynamic> jsonMap = jsonDecode(fixture('intiger.dart'));

     var result =   NumberTriviaModel.fromJson(jsonMap);

      expect(result, NumberTriviaModel);


    });

     test('json data with decimal number ', () {

      Map<String , dynamic> jsonMap = jsonDecode(fixture('doubble.dart'));

     var result =   NumberTriviaModel.fromJson(jsonMap);

      expect(result, NumberTriviaModel);
      

    });

   });

}
