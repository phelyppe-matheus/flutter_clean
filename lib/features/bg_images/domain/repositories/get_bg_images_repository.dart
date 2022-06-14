import 'package:dartz/dartz.dart';
import 'package:flutter_clean/features/bg_images/domain/entities/bg_images.dart';
import 'package:flutter_clean/features/bg_images/domain/errors/errors.dart';

abstract class GetBGImagesRepository {
  Future<Either<BGImageException, BGImage>> getImages();
}
