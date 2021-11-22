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
  var _phonenumberController = TextEditingController();
  String _usernameError = "";
  var validPhonenumber = false;

  @override
  void dispose() {
    _phonenumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _text = '';

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PhoneNumberInput(
                  controller: _phonenumberController,
                  onChanged: (text) => {
                        if (text.number != null)
                          {
                            setState(() => _text = text.number!),
                            if (text.number!.length == 9)
                              {setState(() => this.validPhonenumber = true)}
                            else
                              {setState(() => this.validPhonenumber = false)}
                          }
                      }),
              ButtonSubmit(
                  enabled: validPhonenumber,
                  nameButton: "Sign In",
                  onPressed: () => _phonenumberController.value.text.isNotEmpty
                      ? {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VerificationPhoneNumber()),
                          )
                        }
                      : null)
            ]));
  }
}
