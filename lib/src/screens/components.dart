import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store_ux/src/models/models.dart';
import 'package:grocery_store_ux/src/style/assets.dart';
import 'package:grocery_store_ux/src/style/colors.dart';
import 'package:grocery_store_ux/src/style/text_themes.dart';

typedef ItemToggleCallback = Function(int itemIndex);

class CategorySection extends StatelessWidget {
  final CategoryModel categoryModel;
  final VoidCallback onToggleCategory;
  final ItemToggleCallback onToggleItem;

  const CategorySection({
    Key key,
    this.categoryModel,
    this.onToggleCategory,
    this.onToggleItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              categoryModel.category,
              style: AppTextThemes.itemTitle.copyWith(
                color: AppColors.shuttleGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Checkbox(
                value: categoryModel.isSelected,
                onChanged: (_) => onToggleCategory?.call(),
              ),
            )
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...List.generate(
                categoryModel.items.length,
                (index) {
                  final controller = ExpandableController();
                  return Column(
                    children: [
                      ExpandablePanel(
                        controller: controller,
                        expanded: ItemRow(
                          item: categoryModel.items[index],
                          isExpanded: true,
                          onTap: () => controller.toggle(),
                          onToggle: () => onToggleItem.call(index),
                        ),
                        collapsed: ItemRow(
                          item: categoryModel.items[index],
                          onTap: () => controller.toggle(),
                          onToggle: () => onToggleItem.call(index),
                        ),
                      ),
                      if (index != categoryModel.items.length - 1) Separator()
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemRow extends StatelessWidget {
  final ItemModel item;
  final bool isExpanded;
  final VoidCallback onTap;
  final VoidCallback onToggle;

  const ItemRow({
    Key key,
    this.isExpanded = false,
    this.onTap,
    this.item,
    this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          item.itemName,
                          style: AppTextThemes.itemTitle.copyWith(
                            color: AppColors.shuttleGrey,
                          ),
                        ),
                        SizedBox(width: 10),
                        if (item.commentModel != null)
                          SvgPicture.asset(
                            AppAssets.icDescription,
                            width: 16,
                            height: 14,
                          )
                      ],
                    ),
                  ),
                  Text(
                    item.qty,
                    style: AppTextThemes.itemQtyValue.copyWith(
                      color: AppColors.shuttleGrey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    item.qtyLabel,
                    style: AppTextThemes.itemQtyValue.copyWith(
                      color: AppColors.shuttleGrey60,
                    ),
                  ),
                  SizedBox(width: 16),
                  Checkbox(
                    value: item.isSelected,
                    onChanged: (_) => onToggle?.call(),
                  )
                ],
              ),
            ),
          ),
          if (isExpanded && item.commentModel != null) ...[
            Separator(),
            Container(
              color: AppColors.linkWater80,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    Text(
                      item.commentModel.comment,
                      style: AppTextThemes.comment.copyWith(
                        color: AppColors.shuttleGrey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 11,
                          child: Text(
                            'K',
                            style: AppTextThemes.avatarInitial.copyWith(
                              color: AppColors.steelBlue,
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          item.commentModel.userName,
                          style: AppTextThemes.userName.copyWith(
                            color: AppColors.raven,
                          ),
                        ),
                        Spacer(),
                        Text(
                          item.commentModel.time,
                          style: AppTextThemes.userName.copyWith(
                            color: AppColors.raven,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppColors.scaffoldBg,
    );
  }
}
