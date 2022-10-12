import 'package:flutter/material.dart';

/// Category List
class CategoryList extends StatelessWidget {
  /// Lists all the product categories here
  const CategoryList({
    super.key,
  });

  /// Generate a list of widgets
  List<Widget> data(BuildContext context) {
    final list = <Widget>[];
    //i<5, pass your dynamic limit as per your requirment
    for (var i = 0; i < 10; i++) {
      list.add(
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: SizedBox(
            height: 180,
            width: 180,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Category Name',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      'https://pngimg.com/uploads/beef/beef_PNG35.png',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ); //add any Widget in place of Text("Index $i")
    }
    return list; // all widget added now retrun the list here
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Shop by category',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 16,
            spacing: 16,
            children: data(context),
          )
        ],
      ),
    );
  }
}
