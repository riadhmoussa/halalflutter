import 'package:flutter/material.dart';
import 'package:halalandroid/components/buttonsubmit.dart';
import 'package:halalandroid/components/input.dart';
import 'package:halalandroid/components/inputpassword.dart';
import 'package:halalandroid/components/phonenumberinput.dart';
import 'package:halalandroid/home.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var checkedValue = true;

    return Scaffold(
      bottomSheet: ButtonSubmit(
        nameButton: "Create an account",
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          )
        },
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 80, 0, 20),
            child: Center(
                child: Image.asset('images/icon.png',
                    width: 130, height: 60, fit: BoxFit.fill)),
          ),
          const Input(placeholder: "First name"),
          const Input(placeholder: "Last name"),
          const Input(placeholder: "E-mail"),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text(
                "I agree to the terms and conditions",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
              value: checkedValue,
              onChanged: (newValue) {},
            ),
          ),
        ],
      ))),
    );
  }
}
