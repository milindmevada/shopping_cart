import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:grocery_store_ux/src/data.dart';
import 'package:grocery_store_ux/src/screens/components.dart';
import 'package:grocery_store_ux/src/style/colors.dart';
import 'package:grocery_store_ux/src/style/text_themes.dart';
import 'package:grocery_store_ux/src/viewmodels/cart_viewmodel.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CartViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            CategoryHeader(),
            SizedBox(height: 16),
            TabBar(
              controller: tabController,
              labelStyle: AppTextThemes.tabTitle.copyWith(
                color: AppColors.blueBayoux,
              ),
              indicatorColor: AppColors.blueBayoux,
              indicatorWeight: 3,
              unselectedLabelColor: AppColors.blueBayoux60,
              tabs: [
                Tab(
                  text: 'Active list (9)',
                ),
                Tab(
                  text: 'Order list',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(
                    color: AppColors.scaffoldBg,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Observer(
                        builder: (context) => ListView.builder(
                          itemCount: vm.allData.length,
                          itemBuilder: (context, index) {
                            final category = vm.allData[index];
                            if (category == null) {
                              return SizedBox();
                            }
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Observer(
                                builder: (context) => CategorySection(
                                  categoryModel: category,
                                  onToggleCategory: () =>
                                      vm.toggleCategorySelection(index),
                                  onToggleItem: (itemIndex) =>
                                      vm.toggleItemSelection(index, itemIndex),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: AppColors.scaffoldBg,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Order List",
                          style: AppTextThemes.tabTitle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CartViewModel>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(CategoryItemData.all.length, (index) {
          final e = CategoryItemData.all[index];
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  right: index != CategoryItemData.all.length - 1 ? 8 : 10),
              child: Observer(
                builder: (context) => CategoryItem(
                  asset: e.asset,
                  label: e.name,
                  isSelected: vm.selectedCategoryIndex == index,
                  onTap: () => vm.selectCategory(index),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
