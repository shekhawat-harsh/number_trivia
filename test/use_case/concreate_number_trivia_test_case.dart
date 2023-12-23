import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/domain/repository/number_trivia_repo.dart';
import 'package:number_trivia/domain/use_case/concreate_number_trivia.dart';

class MockNumberTriviaRepo extends Mock implements NumberTriviaRepo {}

void main() {
  GetConcreateNumberTrivia usecase;
  MockNumberTriviaRepo triviaRepo;

  setUp(() {
    triviaRepo = MockNumberTriviaRepo();
    usecase = GetConcreateNumberTrivia(triviaRepo);
  });
}
