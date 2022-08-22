import 'package:flutter/material.dart';

import 'package:meals/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {'id': id, 'title': title},
    );

    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen(id, title);
    //     },
    //   ),
    // );
    // you push a Material Page Route or a CupertinoPageRoute
    // the most important argument is the builder
    // builder - tells us which widget should be built with the help of the MaterialPageRoute
    // we need MaterialPageRoute as a wrapper to handle things like animation from the old page to the new page
    // fullscreenDialog - controls whether you want to have a default animation
    // maintainState
    // settings
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
