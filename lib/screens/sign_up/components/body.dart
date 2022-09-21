import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbiman_cinema/components/existing_account_check.dart';
import 'package:mbiman_cinema/components/rounded_button.dart';
import 'package:mbiman_cinema/components/rounded_input_field.dart';
import 'package:mbiman_cinema/components/rounded_password_field.dart';
import 'package:mbiman_cinema/screens/login/login_screen.dart';
import 'package:mbiman_cinema/screens/sign_up/components/background.dart';
import 'package:mbiman_cinema/screens/sign_up/components/or_divider.dart';
import 'package:mbiman_cinema/screens/sign_up/components/social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGN UP',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/icons/33.png',
              height: size.height * 0.235,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Full Name',
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: 'Email',
              icon: Icons.email,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: () {},
            ),
            ExistingAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.png',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.png',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.png',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
