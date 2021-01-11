// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartViewModel on _CartViewModel, Store {
  final _$selectedCategoryIndexAtom =
      Atom(name: '_CartViewModel.selectedCategoryIndex');

  @override
  int get selectedCategoryIndex {
    _$selectedCategoryIndexAtom.reportRead();
    return super.selectedCategoryIndex;
  }

  @override
  set selectedCategoryIndex(int value) {
    _$selectedCategoryIndexAtom.reportWrite(value, super.selectedCategoryIndex,
        () {
      super.selectedCategoryIndex = value;
    });
  }

  final _$allDataAtom = Atom(name: '_CartViewModel.allData');

  @override
  ObservableList<CategoryModel> get allData {
    _$allDataAtom.reportRead();
    return super.allData;
  }

  @override
  set allData(ObservableList<CategoryModel> value) {
    _$allDataAtom.reportWrite(value, super.allData, () {
      super.allData = value;
    });
  }

  final _$_CartViewModelActionController =
      ActionController(name: '_CartViewModel');

  @override
  void selectCategory(int index) {
    final _$actionInfo = _$_CartViewModelActionController.startAction(
        name: '_CartViewModel.selectCategory');
    try {
      return super.selectCategory(index);
    } finally {
      _$_CartViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleCategorySelection(int index) {
    final _$actionInfo = _$_CartViewModelActionController.startAction(
        name: '_CartViewModel.toggleCategorySelection');
    try {
      return super.toggleCategorySelection(index);
    } finally {
      _$_CartViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleItemSelection(int categoryIndex, int itemIndex) {
    final _$actionInfo = _$_CartViewModelActionController.startAction(
        name: '_CartViewModel.toggleItemSelection');
    try {
      return super.toggleItemSelection(categoryIndex, itemIndex);
    } finally {
      _$_CartViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCategoryIndex: ${selectedCategoryIndex},
allData: ${allData}
    ''';
  }
}
