import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halalandroid/components/buttonsubmit.dart';
import 'package:halalandroid/components/roundbutton.dart';
import 'package:halalandroid/home.dart';

class DetailsAdScreen extends StatefulWidget {
  const DetailsAdScreen({Key? key}) : super(key: key);

  @override
  _DetailsAdScreenState createState() => _DetailsAdScreenState();
}

class _DetailsAdScreenState extends State<DetailsAdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ButtonSubmit(
        nameButton: "Add comment",
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          )
        },
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(alignment: Alignment.topCenter, children: <Widget>[
              Image(
                image: new AssetImage('images/ad.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [RoundButton(), RoundButton()],
              ),
            ]),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dutch sheep",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Sheep",
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0) //
                              ),
                          border: Border.all(color: Colors.grey)),
                      child: Text(
                          'Lorem Ipsum has been and remains the standard for formal text since the fifteenth century when an unknown printing press stacked a set of random letters taken from a text, to form a pamphlet as a guide or formal reference for these letters.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey, size: 14.0),
                            Text(
                              "Sheep",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey, size: 14.0),
                            Text(
                              "Sheep",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Comments",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "(41)",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Text(
                          "Read all",
                          style: TextStyle(fontSize: 12, color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
