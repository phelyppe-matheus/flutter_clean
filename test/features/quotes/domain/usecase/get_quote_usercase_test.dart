import 'package:dartz/dartz.dart';
import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/features/quotes/domain/errors/errors.dart';
import 'package:flutter_clean/features/quotes/domain/repositories/get_quote_repository.dart';
import 'package:flutter_clean/features/quotes/domain/usecases/get_quote_usercase.dart';
import 'package:flutter_test/flutter_test.dart';

class GetQuoteRepositoryMock implements GetQuoteRepository {
  @override
  Future<Either<QuoteException, List<Quote>>> getQuoteOfTheDay(
      [QuoteParams? params]) async {
    return Right(
      [
        Quote(
          quote: "lee",
          tags: ["lebre", "${params!.subject}"],
          category: "action",
        )
      ],
    );
  }

  @override
  Future<Either<QuoteException, List<Quote>>> getRandomQuote(
      [QuoteParams? params]) async {
    return Right(
      [
        Quote(
          quote: "lee",
          tags: ["lebre", "${params!.subject}"],
          category: "action",
        )
      ],
    );
  }
}

void main() {
  var repository = GetQuoteRepositoryMock();
  final usercase = GetQuoteUsercase(repository: repository);

  test('get quote usercase ...', () async {
    final result = await usercase(QuoteParams(subject: "ayyyyyyyyy"));

    expect(result.isRight(), true);
    expect(
        result
            .getOrElse(() => [
                  Quote(quote: 'a', tags: ['b', 'c'], category: 'aye')
                ])[0]
            .quote,
        'lee');
  });
}
