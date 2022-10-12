import 'package:flutter/material.dart';

/// Featured Products
class FeaturedProducts extends StatelessWidget {
  /// Displays a horizontal list of featured products
  const FeaturedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Featured',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: (index == 0) ? 14 : 4,
                  right: 4,
                  bottom: 16,
                ),
                child: Card(
                  elevation: 0,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Free Range Eggs'),
                        ),
                        Expanded(
                          child: Image.network(
                            'https://d.newsweek.com/en/full/886411/rtx1ojog.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Shopping+ price: £2.00',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                    Text(
                                      'You save: £0.50',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                ).copyWith(
                                  elevation: ButtonStyleButton.allOrNull(0),
                                ),
                                onPressed: () {},
                                child: const Text('£2.50'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
