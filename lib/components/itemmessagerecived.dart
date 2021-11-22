import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMessageRecived extends StatefulWidget {
  const ItemMessageRecived({Key? key}) : super(key: key);

  @override
  _ItemMessageRecivedState createState() => _ItemMessageRecivedState();
}

class _ItemMessageRecivedState extends State<ItemMessageRecived> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Text("18:25")),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      padding: EdgeInsets.all(8),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(16.0),
                        color: Colors.grey.shade200,
                      ),
                      child: Text(
                        "God bless you",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    )
                  ],
                ),
              )),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 50,
                height: 50,
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: new AssetImage('images/dargon.jpg')),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
