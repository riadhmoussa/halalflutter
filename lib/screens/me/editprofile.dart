import 'package:flutter/material.dart';
import 'package:halalandroid/components/buttonsubmit.dart';
import 'package:halalandroid/components/dropdowninput.dart';
import 'package:halalandroid/components/inputedit.dart';
import 'package:halalandroid/components/inputsearch.dart';
import 'package:halalandroid/components/thirdcustombar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var checkedValue = true;

    return Scaffold(
      bottomSheet: ButtonSubmit(
        nameButton: "Save",
        onPressed: () => {},
      ),
      backgroundColor: Colors.white,
      appBar: ThirdCustomBar("Edit my account"),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/person.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/icon_camera.png'),
                    width: 30,
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Moussa Riadh",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            "mishaal2020@gmail.com",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Divider(),
          InputEdit(label: "Username", value: "Moussa Riadh"),
          Divider(),
          InputEdit(label: "E-mail", value: "riadhmoussa1177@gmail.com"),
          Divider(),
          InputEdit(label: "Phone number", value: "+96621456987"),
          Divider(),
          Container(
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text(
                "You can talk to me on WhatsApp",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
              value: checkedValue,
              onChanged: (newValue) {},
            ),
          ),
          Divider(),
        ],
      )),
    );
  }
}
