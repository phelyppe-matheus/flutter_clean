import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/features/quotes/domain/errors/errors.dart';
import 'package:flutter_clean/features/quotes/domain/repositories/get_quote_repository.dart';
import 'package:flutter_clean/features/quotes/domain/usecases/get_quote_usercase.dart';
import 'package:flutter_clean/features/quotes/data/models/quotes_rest.dart';

class GetQuoteRepositoryImpl implements GetQuoteRepository {
  @override
  Future<Either<QuoteException, List<Quote>>> getQuoteOfTheDay(
      [QuoteParams? params]) async {
    var response = await http
        .get(Uri.parse('https://quotes.rest/qod'))
        .timeout(const Duration(seconds: 45));

    if (response.statusCode != 200) {
      return Left(
        QuoteException("Quote Rest response returned ${response.statusCode}"),
      );
    }

    return Right([QuotesRest.fromJson(response.body)]);
  }

  @override
  Future<Either<QuoteException, List<Quote>>> getRandomQuote(
      [QuoteParams? params]) {
    // TODO: implement getRandomQuote
    throw UnimplementedError();
  }
}
