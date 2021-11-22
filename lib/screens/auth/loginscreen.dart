import 'package:flutter/material.dart';
import 'package:halalandroid/components/buttonsubmit.dart';
import 'package:halalandroid/components/phonenumberinput.dart';
import 'package:halalandroid/screens/auth/registerscreen.dart';
import 'package:halalandroid/screens/auth/verificationnumber.dart';
import 'package:halalandroid/screens/me/contactus.dart';
import '../../home.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PhoneNumberInput(),
              ButtonSubmit(
                nameButton: "Sign In",
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationPhoneNumber()),
                  )
                },
              )
            ]));
  }
}
