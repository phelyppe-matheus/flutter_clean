// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_clean/features/bg_images/domain/entities/bg_images.dart';

class BGImagesGoogle extends BGImage {
  BGImagesGoogle({required String path}) : super(path: path);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory BGImagesGoogle.fromMap(Map<String, dynamic> map) {
    return BGImagesGoogle(
      path: map['path'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BGImagesGoogle.fromJson(String source) =>
      BGImagesGoogle.fromMap(json.decode(source) as Map<String, dynamic>);
}
