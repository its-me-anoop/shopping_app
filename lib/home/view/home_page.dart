import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/components/components.dart';
import 'package:shopping_app/home/home.dart';

///Home Page
class HomePage extends StatelessWidget {
  ///Main Home Page of the app
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).canvasColor,
        trailing: SignInButton(),
        middle: AppTitle(),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: const [
          Section(
            child: ShoppingPlus(),
          ),
          Section(
            child: FeaturedProducts(),
          ),
          Section(
            child: CategoryList(),
          )
        ],
      ),
    );
  }
}
