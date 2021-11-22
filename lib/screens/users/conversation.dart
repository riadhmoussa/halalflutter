import 'package:flutter/material.dart';
import 'package:halalandroid/components/buttonsubmit.dart';
import 'package:halalandroid/components/customappbar.dart';
import 'package:halalandroid/components/itemconversationsend.dart';
import 'package:halalandroid/components/itemmessagerecived.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: ButtonSubmit(
          nameButton: "Create an account",
          onPressed: () => {},
        ),
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Moussa Riadh"),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(children: [
                ItemConversationSend(),
                ItemMessageRecived(),
                ItemConversationSend(),
                ItemMessageRecived(),
                ItemConversationSend(),
                ItemMessageRecived()
              ]),
            )
          ],
        ));
  }
}
