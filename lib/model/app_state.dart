import 'package:imgsrc/model/comment_models.dart';
import 'package:imgsrc/model/gallery_item.dart';
import 'package:imgsrc/model/gallery_models.dart';

class AppState {
  final bool isLoading;
  final GalleryFilter galleryFilter;
  final List<GalleryItem> galleryItems;
  final Map<String, List<Comment>> itemComments;
  final Map<String, GalleryItem> itemDetails;
  final Map<String, int> albumIndex;

  AppState(
      {this.isLoading = false,
      this.itemDetails = const {},
      this.galleryItems = const [],
      this.galleryFilter = const GalleryFilter(GallerySection.hot, GallerySort.top, GalleryWindow.day, 0),
      this.itemComments = const {},
      this.albumIndex = const {}});

  factory AppState.loading() => AppState(isLoading: true);

  @override
  String toString() {
    return '{isLoading=$isLoading, '
        'galleryItemCount=${galleryItems.length}, '
        'filter=$galleryFilter, '
        'itemCommentCount=${itemComments.length}, '
        'itemDetails=${itemDetails.length} ';
  }
}
