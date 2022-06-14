import 'package:dartz/dartz.dart';

import 'package:flutter_clean/features/bg_images/domain/entities/bg_images.dart';
import 'package:flutter_clean/features/bg_images/domain/errors/errors.dart';
import 'package:flutter_clean/features/bg_images/domain/repositories/get_bg_images_repository.dart';

abstract class IGetBGImageUsecase {
  Future<Either<BGImageException, BGImage>> call(BGImageParams params);
}

class GetBGImageUsecase implements IGetBGImageUsecase {
  final GetBGImagesRepository repository;

  GetBGImageUsecase(this.repository);

  @override
  Future<Either<BGImageException, BGImage>> call(BGImageParams params) async {
    return repository.getImages();
  }
}

class BGImageParams {
  final String subject;

  BGImageParams(this.subject);
}
