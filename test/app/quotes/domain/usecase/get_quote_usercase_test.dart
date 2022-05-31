import 'package:flutter_clean/app/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/app/quotes/domain/repositories/get_quote_repository.dart';
import 'package:flutter_clean/app/quotes/domain/usecase/get_quote_usercase.dart';
import 'package:flutter_test/flutter_test.dart';

class GetQuoteRepositoryMock implements GetQuoteRepository {
  @override
  Future<Quote> getQuote([QuoteParams? params]) async {
    return Quote(
        quote: "Ayyyyyyy",
        tags: ["lebre", "${params!.subject}"],
        category: "action");
  }
}

void main() {
  var repository = GetQuoteRepositoryMock();
  final usercase = GetQuoteUsercase(repository: repository);
  test('get quote usercase ...', () async {
    final result = usercase(QuoteParams(subject: "ayyyyyyyyy"));
  });
}
