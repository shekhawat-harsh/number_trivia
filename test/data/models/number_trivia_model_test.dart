import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(number: 1, text: "test text");

  test('NumberTrivia model extends entity', () {
    expect(tNumberTriviaModel, isA<NumberTrivia>);
  });
}
