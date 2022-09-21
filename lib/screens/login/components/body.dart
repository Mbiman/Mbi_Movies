import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbiman_cinema/components/rounded_button.dart';
import 'package:mbiman_cinema/screens/login/components/background.dart';
import 'package:mbiman_cinema/components/rounded_input_field.dart';
import 'package:mbiman_cinema/components/rounded_password_field.dart';

import '../../../components/existing_account_check.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                'assets/icons/11.png',
                height: size.height * 0.3,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: 'Your Email',
                onChanged: (value) {},
                icon: Icons.person,
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              ExistingAccountCheck(
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
