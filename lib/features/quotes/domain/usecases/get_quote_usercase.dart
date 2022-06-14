// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/features/quotes/domain/errors/errors.dart';
import 'package:flutter_clean/features/quotes/domain/repositories/get_quote_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetQuoteUsecase {
  Future<Either<QuoteException, List<Quote>>> call(QuoteParams params);
}

class GetQuoteUsercase implements IGetQuoteUsecase {
  final GetQuoteRepository repository;

  GetQuoteUsercase({
    required this.repository,
  });

  @override
  Future<Either<QuoteException, List<Quote>>> call(QuoteParams params) {
    return repository.getQuoteOfTheDay(params);
  }
}

class QuoteParams {
  String? subject;

  QuoteParams({
    this.subject,
  });
}
