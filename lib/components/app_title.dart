import 'package:flutter/material.dart';

/// App Title
class AppTitle extends StatelessWidget {
  /// Title or Name of the shop
  const AppTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Shopping App',
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
