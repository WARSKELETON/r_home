import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_viewer_event.dart';
part 'image_viewer_state.dart';
part 'image_viewer_bloc.freezed.dart';

class ImageViewerBloc extends Bloc<ImageViewerEvent, ImageViewerState> {
  ImageViewerBloc() : super(ImageViewerState.initial()) {
    on<SelectedImageIndex>(_onSelectedImageIndex);
  }

  void _onSelectedImageIndex(SelectedImageIndex event, Emitter<ImageViewerState> emit) {
    emit(state.copyWith(selectedImageIndex: event.selectedImageIndex));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
