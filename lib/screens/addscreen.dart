import 'package:flutter/material.dart';
import '../components/buttonsubmit.dart';
import '../components/customappbar.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    var checkedValue = true;
    return Scaffold(
      appBar: CustomAppBar("Add ad"),
      body: Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Name",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: const Align(
                alignment: Alignment
                    .centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  "Region",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: const Align(
                alignment: Alignment
                    .centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  "City",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: const Align(
                alignment: Alignment
                    .centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  "Category",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
          Container(
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: const Align(
                alignment: Alignment
                    .centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  "Type",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
          Container(
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: const Align(
                alignment: Alignment
                    .centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                  "Ad details",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
              "Comments feature not enabled",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15),
            ),
            value: checkedValue,
            onChanged: (newValue) {},
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Align(
                child: Text(
                  "Reminder: The commission rate for a halal company is 1% of the sale amount.Browse our bank accounts list ",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15),
                ),
              )),
          ButtonSubmit(nameButton: "Save", onPressed: () => {})
        ])),
      ),
    );
  }
}
