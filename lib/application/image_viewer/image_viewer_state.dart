part of 'image_viewer_bloc.dart';

@freezed
class ImageViewerState with _$ImageViewerState {
  const factory ImageViewerState({
    required int selectedImageIndex,
  }) = _ImageViewerState;

  factory ImageViewerState.initial() => ImageViewerState(
    selectedImageIndex: 0,
  );
}
