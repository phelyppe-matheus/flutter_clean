import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/features/quotes/domain/errors/errors.dart';
import 'package:flutter_clean/features/quotes/domain/usecases/get_quote_usercase.dart';
import 'package:dartz/dartz.dart';

abstract class GetQuoteRepository {
  Future<Either<QuoteException, List<Quote>>> getQuoteOfTheDay(
      [QuoteParams? params]);
  Future<Either<QuoteException, List<Quote>>> getRandomQuote(
      [QuoteParams? params]);
}
