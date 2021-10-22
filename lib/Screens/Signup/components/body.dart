import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_inputaddress_field.dart';
import 'package:flutter_auth/components/rounded_inputtgl_field.dart';
import 'package:flutter_auth/components/rounded_inputtlpn_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "DAFTAR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/img-register.png",
              width: size.width * 0.50,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputTeleponField(
              hintText: "Masukkan Nomor Hp/Whatsapp",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Masukkan Nama Lengkap Anda",
              onChanged: (value) {},
            ),
            RoundedInputTglUltahField(
              hintText: "Masukkan Tgl Ulang Tahun Anda",
              onChanged: (value) {},
            ),
            RoundedInputAddressField(
              hintText: "Masukkan Alamat Anda",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Masukkan Email Anda",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "DAFTAR",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
          ],
        ),
      ),
    );
  }
}
