import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/app.dart';
import 'package:shopping_app/shop_observer.dart';

void main() {
  Bloc.observer = ShopObserver();
  runApp(const ShoppingApp());
}
