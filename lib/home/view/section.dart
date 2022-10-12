import 'package:flutter/material.dart';

/// Sections
class Section extends StatelessWidget {
  /// Displaying different contents  with a gradient background
  /// providing subtle separation from other sections
  const Section({super.key, required this.child});

  /// Content of the section
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 0.4),
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).scaffoldBackgroundColor,
            if (Theme.of(context).brightness == Brightness.dark)
              Colors.grey[900]!
            else
              Colors.grey[200]!,
          ],
        ),
      ),
      child: child,
    );
  }
}
