import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bg_images_event.dart';
part 'bg_images_state.dart';

class BgImagesBloc extends Bloc<BgImagesEvent, BgImagesState> {
  BgImagesBloc() : super(BgImagesInitial()) {
    on<BgImagesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
