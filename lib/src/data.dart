import 'package:grocery_store_ux/src/models/models.dart';
import 'package:grocery_store_ux/src/style/assets.dart';

class AppData {
  static List<CategoryModel> allItems = [
    CategoryModel(
      category: "Dairy",
      items: [
        ItemModel(
          itemName: "Milk",
          qty: "2.5",
          qtyLabel: "ltr",
          commentModel: CommentModel(
            comment:
                "et non sunt in  except eur sunt et non sunt in ex except eur sunt et sunt. xcept eur sunt et non",
            userName: "Kathryn Howard",
            time: "4 hour ago",
          ),
        ),
        ItemModel(
          itemName: "Cheese",
          qty: "1",
          qtyLabel: "pkg",
        ),
        ItemModel(
          itemName: "Curd",
          qty: "2",
          qtyLabel: "pkg",
          commentModel: CommentModel(
            comment:
                "et non sunt in  except eur sunt et non sunt in ex except eur sunt et sunt. xcept eur sunt et non",
            userName: "Kathryn Howard",
            time: "4 hour ago",
          ),
        ),
      ],
    ),
    CategoryModel(
      category: "Medicine",
      items: [
        ItemModel(
          itemName: "Paracetamol",
          qty: "1",
          qtyLabel: "strp",
        ),
        ItemModel(
          itemName: "Hydroxychloroquine",
          qty: "4",
          qtyLabel: "sdf",
        ),
        ItemModel(
          itemName: "Glycodin",
          qty: "1",
          qtyLabel: "pc",
          commentModel: CommentModel(
            comment:
                "et non sunt in  except eur sunt et non sunt in ex except eur sunt et sunt. xcept eur sunt et non",
            userName: "Kathryn Howard",
            time: "4 hour ago",
          ),
        ),
      ],
    ),
  ];
}

class CategoryItemData {
  final String asset;
  final String name;

  const CategoryItemData(this.asset, this.name);

  static const all = [
    CategoryItemData(AppAssets.icGrocery, 'Grocery'),
    CategoryItemData(AppAssets.icIron, 'Ironing'),
    CategoryItemData(AppAssets.icDryCleaning, 'Dry Cleaning'),
    CategoryItemData(AppAssets.icMilk, 'Milk'),
    CategoryItemData(AppAssets.icTodo, 'Todo'),
  ];
}
