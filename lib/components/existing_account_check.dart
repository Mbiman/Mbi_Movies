import 'package:flutter/material.dart';
import 'package:mbiman_cinema/constants.dart';

class ExistingAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const ExistingAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'I forgot my password  ? ' : 'Already have an Account?',
          style: const TextStyle(
            color: kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Reset' : 'Sign In',
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
