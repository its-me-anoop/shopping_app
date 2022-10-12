import 'package:flutter/material.dart';

/// Shopping Plus
class ShoppingPlus extends StatelessWidget {
  /// Subscription Service
  const ShoppingPlus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Shopping+',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Join Shopping App+ and get guaranteed discounts across '
              'our various products hand picked for you.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0)),
            onPressed: () {},
            child: const Text('Join now'),
          ),
          SizedBox(
            height: 300,
            child: Image.network(
              'https://www.pngmart.com/files/7/Grocery-Transparent-Background.png',
            ),
          )
        ],
      ),
    );
  }
}
