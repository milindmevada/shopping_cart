import 'package:grocery_store_ux/src/data.dart';
import 'package:grocery_store_ux/src/models/models.dart';
import 'package:mobx/mobx.dart';

part 'cart_viewmodel.g.dart';

// ignore_for_file: use_setters_to_change_properties

class CartViewModel = _CartViewModel with _$CartViewModel;

abstract class _CartViewModel with Store {
  @observable
  int selectedCategoryIndex = 0;

  @action
  void selectCategory(int index) => selectedCategoryIndex = index;

  @observable
  ObservableList<CategoryModel> allData = ObservableList.of(AppData.allItems);

  @action
  void toggleCategorySelection(int index) {
    final newValue = !allData[index].isSelected;
    allData[index] = allData[index].copyWith(
      items: allData[index]
          .items
          .map((e) => e.copyWith(isSelected: newValue))
          .toList(),
    );
    allData[index] = allData[index].copyWith(isSelected: newValue);
  }

  @action
  void toggleItemSelection(int categoryIndex, int itemIndex) {
    final item = allData[categoryIndex].items[itemIndex].copyWith(
          isSelected: !allData[categoryIndex].items[itemIndex].isSelected,
        );
    allData[categoryIndex].items[itemIndex] = item;
    allData.add(null);
    allData.remove(null);
  }
}
