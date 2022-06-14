import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter_clean/features/bg_images/domain/entities/bg_images.dart';
import 'package:flutter_clean/features/bg_images/data/models/BGImagesGoogle.dart';
import 'package:flutter_clean/features/bg_images/domain/errors/errors.dart';
import 'package:flutter_clean/features/bg_images/domain/repositories/get_bg_images_repository.dart';

class GetBGImagesFromGoogle implements GetBGImagesRepository {
  @override
  Future<Either<BGImageException, BGImage>> getImages() {
    // TODO: implement getImages
    throw UnimplementedError();
  }
}
