import 'package:dotenv/dotenv.dart';
import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/features/quotes/domain/usecases/get_quote_usercase.dart';
import 'package:flutter_clean/features/quotes/data/repositories/get_quote_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var repository = GetQuoteRepositoryImpl();
  final usercase = GetQuoteUsercase(repository: repository);

  // test only when requested
  if (!DotEnv(includePlatformEnvironment: true).isDefined("ONLINE_TEST")) {
    return;
  }

  test(
    "should get a online quote",
    () async {
      final result = await usercase(QuoteParams(subject: "ayyyyyyyyy"));

      expect(
        result.isRight(),
        true,
      );

      expect(
        result
                .getOrElse(
                  () => [
                    Quote(
                      quote: 'no response',
                      tags: ['b', 'c'],
                      category: 'aye',
                    )
                  ],
                )[0]
                .quote ==
            'no response',
        false,
      );
    },
  );
}
