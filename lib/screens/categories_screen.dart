import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoryItem(catData.id, catData.title, catData.color))
          .toList(), // childAspectRatio is to define how the items should be size regarding their height and width relation 3 / 2 means for 200 width, I want to have 300 height in the end

      // Slivers are just scrollable areas on the screen, GridDelegate - for the grid, this takes care about structuring the layout of the grid, MaxCorssAxisContent - pre configuged class that allows to define maximum width for each grid item and it will automatically create as many columns as it can fit
    );
  }
}
