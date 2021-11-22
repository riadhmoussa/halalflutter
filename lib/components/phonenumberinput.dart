import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({Key? key}) : super(key: key);

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: IntlPhoneField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: InputBorder.none,
              labelText: 'Phone Number',
              labelStyle: new TextStyle(
                fontSize: 12.0,
              ),
              counterText: "",
            ),
            initialCountryCode: 'SA',
            onChanged: (phone) {},
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
          child: Divider(color: Colors.grey[300]),
        ),
      ],
    );
  }
}
