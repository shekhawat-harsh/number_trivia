import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/faliure.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/domain/repository/number_trivia_repo.dart';

class GetRandomNumberTrivia {
  NumberTriviaRepo repo;

  GetRandomNumberTrivia(this.repo);
  Future<Either<Failure, NumberTrivia>> call() async {
    return await repo.getRandomNumberTrivia();
  }
}
