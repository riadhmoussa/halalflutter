// ignore: file_names
import 'package:flutter/material.dart';
import 'package:halalandroid/components/customappbar.dart';
import 'package:halalandroid/components/itemads.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar("My Ads"),
      body: ListView(
        children: [
          ItemAds(
            showEditButton: true,
          ),
          ItemAds(
            showEditButton: true,
          ),
          ItemAds(
            showEditButton: true,
          ),
          ItemAds(
            showEditButton: true,
          ),
        ],
      ),
    );
  }
}
