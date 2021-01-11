// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryModelTearOff {
  const _$CategoryModelTearOff();

// ignore: unused_element
  _CategoryModel call(
      {String category, bool isSelected = false, List<ItemModel> items}) {
    return _CategoryModel(
      category: category,
      isSelected: isSelected,
      items: items,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryModel = _$CategoryModelTearOff();

/// @nodoc
mixin _$CategoryModel {
  String get category;
  bool get isSelected;
  List<ItemModel> get items;

  $CategoryModelCopyWith<CategoryModel> get copyWith;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call({String category, bool isSelected, List<ItemModel> items});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object category = freezed,
    Object isSelected = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed ? _value.category : category as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
      items: items == freezed ? _value.items : items as List<ItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) then) =
      __$CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String category, bool isSelected, List<ItemModel> items});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(
      _CategoryModel _value, $Res Function(_CategoryModel) _then)
      : super(_value, (v) => _then(v as _CategoryModel));

  @override
  _CategoryModel get _value => super._value as _CategoryModel;

  @override
  $Res call({
    Object category = freezed,
    Object isSelected = freezed,
    Object items = freezed,
  }) {
    return _then(_CategoryModel(
      category: category == freezed ? _value.category : category as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
      items: items == freezed ? _value.items : items as List<ItemModel>,
    ));
  }
}

/// @nodoc
class _$_CategoryModel implements _CategoryModel {
  _$_CategoryModel({this.category, this.isSelected = false, this.items})
      : assert(isSelected != null);

  @override
  final String category;
  @JsonKey(defaultValue: false)
  @override
  final bool isSelected;
  @override
  final List<ItemModel> items;

  @override
  String toString() {
    return 'CategoryModel(category: $category, isSelected: $isSelected, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryModel &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isSelected) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
      {String category,
      bool isSelected,
      List<ItemModel> items}) = _$_CategoryModel;

  @override
  String get category;
  @override
  bool get isSelected;
  @override
  List<ItemModel> get items;
  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith;
}

/// @nodoc
class _$ItemModelTearOff {
  const _$ItemModelTearOff();

// ignore: unused_element
  _ItemModel call(
      {String itemName,
      String qty,
      String qtyLabel,
      bool isSelected = false,
      CommentModel commentModel}) {
    return _ItemModel(
      itemName: itemName,
      qty: qty,
      qtyLabel: qtyLabel,
      isSelected: isSelected,
      commentModel: commentModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemModel = _$ItemModelTearOff();

/// @nodoc
mixin _$ItemModel {
  String get itemName;
  String get qty;
  String get qtyLabel;
  bool get isSelected;
  CommentModel get commentModel;

  $ItemModelCopyWith<ItemModel> get copyWith;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call(
      {String itemName,
      String qty,
      String qtyLabel,
      bool isSelected,
      CommentModel commentModel});

  $CommentModelCopyWith<$Res> get commentModel;
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object itemName = freezed,
    Object qty = freezed,
    Object qtyLabel = freezed,
    Object isSelected = freezed,
    Object commentModel = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      qty: qty == freezed ? _value.qty : qty as String,
      qtyLabel: qtyLabel == freezed ? _value.qtyLabel : qtyLabel as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
      commentModel: commentModel == freezed
          ? _value.commentModel
          : commentModel as CommentModel,
    ));
  }

  @override
  $CommentModelCopyWith<$Res> get commentModel {
    if (_value.commentModel == null) {
      return null;
    }
    return $CommentModelCopyWith<$Res>(_value.commentModel, (value) {
      return _then(_value.copyWith(commentModel: value));
    });
  }
}

/// @nodoc
abstract class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) then) =
      __$ItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String itemName,
      String qty,
      String qtyLabel,
      bool isSelected,
      CommentModel commentModel});

  @override
  $CommentModelCopyWith<$Res> get commentModel;
}

/// @nodoc
class __$ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(_ItemModel _value, $Res Function(_ItemModel) _then)
      : super(_value, (v) => _then(v as _ItemModel));

  @override
  _ItemModel get _value => super._value as _ItemModel;

  @override
  $Res call({
    Object itemName = freezed,
    Object qty = freezed,
    Object qtyLabel = freezed,
    Object isSelected = freezed,
    Object commentModel = freezed,
  }) {
    return _then(_ItemModel(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      qty: qty == freezed ? _value.qty : qty as String,
      qtyLabel: qtyLabel == freezed ? _value.qtyLabel : qtyLabel as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
      commentModel: commentModel == freezed
          ? _value.commentModel
          : commentModel as CommentModel,
    ));
  }
}

/// @nodoc
class _$_ItemModel implements _ItemModel {
  _$_ItemModel(
      {this.itemName,
      this.qty,
      this.qtyLabel,
      this.isSelected = false,
      this.commentModel})
      : assert(isSelected != null);

  @override
  final String itemName;
  @override
  final String qty;
  @override
  final String qtyLabel;
  @JsonKey(defaultValue: false)
  @override
  final bool isSelected;
  @override
  final CommentModel commentModel;

  @override
  String toString() {
    return 'ItemModel(itemName: $itemName, qty: $qty, qtyLabel: $qtyLabel, isSelected: $isSelected, commentModel: $commentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemModel &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.qtyLabel, qtyLabel) ||
                const DeepCollectionEquality()
                    .equals(other.qtyLabel, qtyLabel)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)) &&
            (identical(other.commentModel, commentModel) ||
                const DeepCollectionEquality()
                    .equals(other.commentModel, commentModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(qtyLabel) ^
      const DeepCollectionEquality().hash(isSelected) ^
      const DeepCollectionEquality().hash(commentModel);

  @override
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);
}

abstract class _ItemModel implements ItemModel {
  factory _ItemModel(
      {String itemName,
      String qty,
      String qtyLabel,
      bool isSelected,
      CommentModel commentModel}) = _$_ItemModel;

  @override
  String get itemName;
  @override
  String get qty;
  @override
  String get qtyLabel;
  @override
  bool get isSelected;
  @override
  CommentModel get commentModel;
  @override
  _$ItemModelCopyWith<_ItemModel> get copyWith;
}

/// @nodoc
class _$CommentModelTearOff {
  const _$CommentModelTearOff();

// ignore: unused_element
  _CommentModel call({String comment, String userName, String time}) {
    return _CommentModel(
      comment: comment,
      userName: userName,
      time: time,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentModel = _$CommentModelTearOff();

/// @nodoc
mixin _$CommentModel {
  String get comment;
  String get userName;
  String get time;

  $CommentModelCopyWith<CommentModel> get copyWith;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res>;
  $Res call({String comment, String userName, String time});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res> implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  final CommentModel _value;
  // ignore: unused_field
  final $Res Function(CommentModel) _then;

  @override
  $Res call({
    Object comment = freezed,
    Object userName = freezed,
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as String,
      userName: userName == freezed ? _value.userName : userName as String,
      time: time == freezed ? _value.time : time as String,
    ));
  }
}

/// @nodoc
abstract class _$CommentModelCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$CommentModelCopyWith(
          _CommentModel value, $Res Function(_CommentModel) then) =
      __$CommentModelCopyWithImpl<$Res>;
  @override
  $Res call({String comment, String userName, String time});
}

/// @nodoc
class __$CommentModelCopyWithImpl<$Res> extends _$CommentModelCopyWithImpl<$Res>
    implements _$CommentModelCopyWith<$Res> {
  __$CommentModelCopyWithImpl(
      _CommentModel _value, $Res Function(_CommentModel) _then)
      : super(_value, (v) => _then(v as _CommentModel));

  @override
  _CommentModel get _value => super._value as _CommentModel;

  @override
  $Res call({
    Object comment = freezed,
    Object userName = freezed,
    Object time = freezed,
  }) {
    return _then(_CommentModel(
      comment: comment == freezed ? _value.comment : comment as String,
      userName: userName == freezed ? _value.userName : userName as String,
      time: time == freezed ? _value.time : time as String,
    ));
  }
}

/// @nodoc
class _$_CommentModel implements _CommentModel {
  _$_CommentModel({this.comment, this.userName, this.time});

  @override
  final String comment;
  @override
  final String userName;
  @override
  final String time;

  @override
  String toString() {
    return 'CommentModel(comment: $comment, userName: $userName, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentModel &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(time);

  @override
  _$CommentModelCopyWith<_CommentModel> get copyWith =>
      __$CommentModelCopyWithImpl<_CommentModel>(this, _$identity);
}

abstract class _CommentModel implements CommentModel {
  factory _CommentModel({String comment, String userName, String time}) =
      _$_CommentModel;

  @override
  String get comment;
  @override
  String get userName;
  @override
  String get time;
  @override
  _$CommentModelCopyWith<_CommentModel> get copyWith;
}
