import 'package:flutter/material.dart';
import 'package:halalandroid/components/customappbar.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar("Contact Us"),
      body: Container(
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                initialValue: "Riadh Moussa",
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'Full name',
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabled: false,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                initialValue: "+966 5632 9854",
                enabled: false,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'Cell phone',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                enabled: false,
                initialValue: "mishaal2020@gmail.com",
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'Topic',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'The message',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: ElevatedButton(
              child: Text(
                'Send',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                primary: Colors.green,
              ),
              onPressed: () {},
            ),
          ),
        ])),
      ),
    );
  }
}
