import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    String category,
    @Default(false) bool isSelected,
    List<ItemModel> items,
  }) = _CategoryModel;
}

@freezed
abstract class ItemModel with _$ItemModel {
  factory ItemModel({
    String itemName,
    String qty,
    String qtyLabel,
    @Default(false) bool isSelected,
    CommentModel commentModel,
  }) = _ItemModel;
}

@freezed
abstract class CommentModel with _$CommentModel {
  factory CommentModel({
    String comment,
    String userName,
    String time,
  }) = _CommentModel;
}
