import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/faliure.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/domain/repository/number_trivia_repo.dart';

class GetConcreateNumberTrivia {
  NumberTriviaRepo repo;

  GetConcreateNumberTrivia(this.repo);
  Future<Either<Failure, NumberTrivia>> call(int number) async {
    return await repo.getConcreteNumberTrivia(number);
  }
}
