// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_clean/app/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/app/quotes/domain/repositories/get_quote_repository.dart';

abstract class IGetQuoteUsercase {
  void call(QuoteParams params) {}
}

class GetQuoteUsercase implements IGetQuoteUsercase {
  final GetQuoteRepository repository;

  GetQuoteUsercase({
    required this.repository,
  });

  @override
  Future<Quote> call(QuoteParams params) {
    return repository.getQuote(params);
  }
}

class QuoteParams {
  String? subject;

  QuoteParams({
    this.subject,
  });
}
