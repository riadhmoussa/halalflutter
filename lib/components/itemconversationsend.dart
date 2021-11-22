import 'package:flutter/material.dart';

class ItemConversationSend extends StatefulWidget {
  const ItemConversationSend({Key? key}) : super(key: key);

  @override
  _ItemConversationSendState createState() => _ItemConversationSendState();
}

class _ItemConversationSendState extends State<ItemConversationSend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("18:25")),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            padding: EdgeInsets.all(8),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.green,
            ),
            child: Text(
              "Goodbye my brother",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
