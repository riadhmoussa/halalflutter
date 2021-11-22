import 'package:flutter/material.dart';
import 'package:halalandroid/components/dropdowninput.dart';
import 'package:halalandroid/components/inputsearch.dart';
import 'package:halalandroid/components/itemads.dart';
import 'package:halalandroid/components/itemcategory.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "English",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15),
                  ),
                  Center(
                      child: Image.asset('images/icon.png',
                          width: 75, height: 40, fit: BoxFit.fill)),
                  Row(
                    children: const [
                      Icon(Icons.favorite),
                      Icon(Icons.notifications_none)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                children: const <Widget>[
                  Flexible(
                    flex: 2,
                    child: InputSearch(),
                  ),
                  Flexible(
                    flex: 1,
                    child: DropDownInput(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ItemCategory(),
                    ItemCategory(),
                    ItemCategory(),
                    ItemCategory(),
                    ItemCategory(),
                    ItemCategory(),
                    ItemCategory(),
                    ItemCategory(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ItemAds(),
                  ItemAds(),
                  ItemAds(),
                  ItemAds(),
                ],
              ),
            )
          ],
        )));
  }
}
