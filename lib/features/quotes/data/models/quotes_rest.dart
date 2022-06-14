import 'dart:convert';
import 'package:flutter_clean/features/quotes/domain/entities/quote.dart';
import 'package:xml/xml.dart' as xml;

class QuotesRest extends Quote {
  QuotesRest({
    required String quote,
    required List<String> tags,
    required String category,
  }) : super(quote: quote, tags: tags, category: category);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quote': quote,
      'tags': tags,
      'category': category,
    };
  }

  factory QuotesRest.fromMap(Map<String, dynamic> map) => QuotesRest(
        quote: map['quote'] as String,
        tags: List<String>.from(map['tags']),
        category: map['category'] as String,
      );

  String toJson() => json.encode(toMap());

  factory QuotesRest.fromJson(String source, {int index = 0}) =>
      QuotesRest.fromMap(json.decode(source)["contents"]["quotes"][index]
          as Map<String, dynamic>);

  static QuotesRest fromXML(String source, {int index = 0}) =>
      QuotesRest.fromMap(
        xml.XmlDocument.parse(source).findAllElements('quotes')
            as Map<String, dynamic>,
      );
}
