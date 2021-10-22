import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Selamat Datang di Beliin Yuks",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/img-welcome.png",
              width: size.width * 0.65,
            ),
            SizedBox(height: size.height * 0.10),
            SizedBox(height: size.height * 0.05),
            Text(
              "Pastikan nomor telepon kamu dapat dihubungi dan aktif di whatsapp, jika tidak aktif, secara otomatis kamu akan dibatalkan menjadi pemenang Kue Ulang Tahun Gratis",
              style: TextStyle(
                fontSize: 0.25,
                fontWeight: FontWeight.normal,
              ),
            ),
            RoundedButton(
              text: "MASUK",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "DAFTAR",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
