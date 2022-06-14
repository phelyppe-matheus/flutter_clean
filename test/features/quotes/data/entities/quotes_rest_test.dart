import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:flutter_clean/features/quotes/data/models/quotes_rest.dart';
import 'package:flutter_test/flutter_test.dart';

class QODResponse {
  static get body =>
      """{
    "success": {
        "total": 1
    },
    "contents": {
        "quotes": [
            {
                "quote": "Don't be tempted to break momentum-work through it.",
                "length": "58",
                "author": "Lorii Myers",
                "tags": [
                    "inspire",
                    "momentum"
                ],
                "category": "inspire",
                "language": "en",
                "date": "2022-06-03",
                "permalink": "https://theysaidso.com/quote/lorii-myers-dont-be-tempted-to-break-momentumwork-through-it",
                "id": "7cMvHjwuH_L_kCG6psKvTgeF",
                "background": "https://theysaidso.com/img/qod/qod-inspire.jpg",
                "title": "Inspiring Quote of the day"
            }
        ]
    },
    "baseurl": "https://theysaidso.com",
    "copyright": {
        "year": 2024,
        "url": "https://theysaidso.com"
    }
}""";

  static var statusCode = 200;
}

void main() {
  test(
    'quotes rest model should process qod responses',
    () {
      Quote quote = QuotesRest.fromJson(QODResponse.body);

      expect(
        quote.quote,
        contains("Don't be tempted to break momentum-work through it."),
      );
      expect(quote.tags, contains("momentum"));
    },
  );
}
