import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/domain/repository/number_trivia_repo.dart';
import 'package:number_trivia/domain/use_case/concreate_number_trivia.dart';

class MockNumberTriviaRepo extends Mock implements NumberTriviaRepo {}

void main() {
  GetConcreateNumberTrivia? usecase;
  MockNumberTriviaRepo? triviaRepo;

  setUp(() {
    triviaRepo = MockNumberTriviaRepo();
    usecase = GetConcreateNumberTrivia(triviaRepo!);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: tNumber, text: "text");
  test('should get concreate number trivia from the reposetary', () async {
    when(triviaRepo!.getConcreteNumberTrivia(tNumber))
        .thenAnswer((realInvocation) async => const Right(tNumberTrivia));

    final result = await usecase!(tNumber);
    expect(result, const Right(tNumberTrivia));
    verify(triviaRepo!.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(triviaRepo);
  });
}
