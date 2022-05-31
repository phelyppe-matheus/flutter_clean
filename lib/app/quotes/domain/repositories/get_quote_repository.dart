import 'package:flutter_clean/app/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/app/quotes/domain/usecase/get_quote_usercase.dart';

abstract class GetQuoteRepository {
  Future<Quote> getQuote([QuoteParams? params]);
}
