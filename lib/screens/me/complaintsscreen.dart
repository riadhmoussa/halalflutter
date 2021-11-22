import 'package:flutter/material.dart';
import 'package:halalandroid/components/customappbar.dart';
import 'package:halalandroid/components/itemcomplaints.dart';
import 'package:halalandroid/components/itemfollower.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({Key? key}) : super(key: key);

  @override
  _ComplaintsScreenState createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Complaints"),
        body: ListView(
          padding: EdgeInsets.only(top: 15),
          children: [
            ItemComplaints(),
            ItemComplaints(),
            ItemComplaints(),
            ItemComplaints(),
            ItemComplaints(),
            ItemComplaints(),
            ItemComplaints()
          ],
        ));
  }
}
