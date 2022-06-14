import 'package:flutter_clean/features/quotes/data/models/quotes_rest.dart';

abstract class QuotesRestLocalDataSource {
  Future<QuotesRest> getLastQuotesRest();
  Future<void> cacheQuotesRest(QuotesRest quoteToCache);
}
