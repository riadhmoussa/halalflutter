import 'package:flutter/material.dart';
import 'package:halalandroid/components/customappbar.dart';
import 'package:halalandroid/components/itemmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Messages"),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(children: [
                ItemMessage(),
                ItemMessage(),
                ItemMessage(),
                ItemMessage(),
                ItemMessage(),
                ItemMessage(),
                ItemMessage(),
              ]),
            )
          ],
        ));
  }
}
