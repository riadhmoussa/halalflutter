import 'package:flutter/material.dart';
import 'package:halalandroid/components/customappbar.dart';
import 'package:halalandroid/components/itembank.dart';
import 'package:halalandroid/components/itemfollower.dart';

class BanksAccountsScreen extends StatefulWidget {
  const BanksAccountsScreen({Key? key}) : super(key: key);

  @override
  _BanksAccountsScreenState createState() => _BanksAccountsScreenState();
}

class _BanksAccountsScreenState extends State<BanksAccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Our bank accounts"),
        body: ListView(
          children: [
            ItemBank(),
            ItemBank(),
            ItemBank(),
            ItemBank(),
            ItemBank(),
            ItemBank()
          ],
        ));
  }
}
