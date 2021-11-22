import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:halalandroid/components/buttonsubmit.dart';
import 'package:halalandroid/components/textview.dart';
import 'package:halalandroid/screens/auth/registerscreen.dart';

class VerificationPhoneNumber extends StatefulWidget {
  const VerificationPhoneNumber({Key? key}) : super(key: key);

  @override
  _VerificationPhoneNumberState createState() =>
      _VerificationPhoneNumberState();
}

class _VerificationPhoneNumberState extends State<VerificationPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: TextView(),
      body: SafeArea(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: new IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {})),
          Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "Mobile Number Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                      "A code message has been sent to your phone number",
                      maxLines: 3,
                      softWrap: true,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      "+966 xxxxxxxx",
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(fontSize: 14, color: Colors.green),
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: VerificationCode(
              textStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              underlineColor: Colors.black,
              length: 4,
              onCompleted: (String value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreen()),
                );
              },
              onEditing: (bool value) {
                setState(() {});
              },
            ),
          )
        ],
      )),
    );
  }
}
