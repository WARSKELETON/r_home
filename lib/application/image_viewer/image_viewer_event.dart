part of 'image_viewer_bloc.dart';

@freezed
class ImageViewerEvent with _$ImageViewerEvent {
  const factory ImageViewerEvent.changeSelectedImageIndex(int selectedImageIndex) = SelectedImageIndex;
}