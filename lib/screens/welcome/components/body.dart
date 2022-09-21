import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbiman_cinema/components/rounded_button.dart';
import 'package:mbiman_cinema/constants.dart';
import 'package:mbiman_cinema/screens/login/login_screen.dart';
import 'package:mbiman_cinema/screens/sign_up/sign_up.dart';
import 'package:mbiman_cinema/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //provides us with total height and width of screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WELCOME TO MBIMAN CINEMA',
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUp();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
