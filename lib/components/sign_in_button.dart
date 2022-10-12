import 'package:flutter/material.dart';

///Sign In Button
class SignInButton extends StatelessWidget {
  ///Sign In Button Widget goes here
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: const Text('Sign in'));
  }
}
