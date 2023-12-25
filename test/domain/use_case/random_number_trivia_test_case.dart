import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/domain/repository/number_trivia_repo.dart';
import 'package:number_trivia/domain/use_case/random_number_trivia.dart';

class MockNumberTriviaRepo extends Mock implements NumberTriviaRepo {}

void main() {
  GetRandomNumberTrivia? usecase;
  MockNumberTriviaRepo? triviaRepo;

  setUp(() {
    triviaRepo = MockNumberTriviaRepo();
    usecase = GetRandomNumberTrivia(triviaRepo!);
  });

  const tNumberTrivia = NumberTrivia(number: 1, text: "text");
  test('should get random number trivia from the reposetary', () async {
    when(triviaRepo!.getRandomNumberTrivia())
        .thenAnswer((realInvocation) async => const Right(tNumberTrivia));

    final result = await usecase!();
    expect(result, const Right(tNumberTrivia));
    verify(triviaRepo!.getRandomNumberTrivia());
    verifyNoMoreInteractions(triviaRepo);
  });
}
