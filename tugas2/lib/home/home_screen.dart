import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/category_list.dart';
import '../widgets/product_card.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomAppBar(),
      ),
      body: ListView(
        children: [
          SearchBar(),
          CategoryList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Product Terlafis',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ProductGrid(), //
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
