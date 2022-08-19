// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'image_cubit.dart';

class ImageState extends Equatable {
  final List<String> imgList;

  ImageState({required this.imgList});

  factory ImageState.initial() => ImageState(imgList: [
        'assets/images/lake.jpg',
        'assets/images/lake2.jpg',
        'assets/images/flower.jfif'
      ]);

  @override
  List<Object> get props => [imgList];

  ImageState copyWith({
    List<String>? imgList,
  }) {
    return ImageState(
      imgList: imgList ?? this.imgList,
    );
  }
}
