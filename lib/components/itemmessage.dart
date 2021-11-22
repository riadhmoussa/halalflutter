import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halalandroid/screens/users/conversation.dart';

class ItemMessage extends StatefulWidget {
  const ItemMessage({Key? key}) : super(key: key);

  @override
  _ItemMessageState createState() => _ItemMessageState();
}

class _ItemMessageState extends State<ItemMessage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConversationScreen()),
              )
            },
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                      radius: 20,
                      backgroundImage: new AssetImage('images/person.png')),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        verticalDirection: VerticalDirection.up,
                        textBaseline: TextBaseline.alphabetic,
                        textDirection: TextDirection.ltr,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Moussa Riadh",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "25 minutes ago",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        verticalDirection: VerticalDirection.up,
                        textBaseline: TextBaseline.alphabetic,
                        textDirection: TextDirection.ltr,
                        mainAxisSize: MainAxisSize.max,
                        children: [Text('Hello World !!!')],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
