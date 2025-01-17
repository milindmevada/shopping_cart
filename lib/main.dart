import 'package:flutter/material.dart';
import 'package:grocery_store_ux/src/screens/cart_screen.dart';
import 'package:grocery_store_ux/src/style/colors.dart';
import 'package:grocery_store_ux/src/viewmodels/cart_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.pastelGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Provider<CartViewModel>(
        create: (context) => CartViewModel(),
        child: CartScreen(),
      ),
    );
  }
}
