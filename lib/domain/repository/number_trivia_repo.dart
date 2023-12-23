import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/faliure.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepo {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
