import 'package:flutter/material.dart';
import 'package:halalandroid/screens/users/userprofile.dart';
import '../../components/customappbar.dart';
import '../../components/itemfollower.dart';

class FollowerScreen extends StatefulWidget {
  const FollowerScreen({Key? key}) : super(key: key);

  @override
  _FollowerScreenState createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Follow up"),
        body: ListView(
          children: [
            ItemFollower(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                )
              },
            ),
            ItemFollower(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                )
              },
            ),
            ItemFollower(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                )
              },
            ),
            ItemFollower(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                )
              },
            ),
          ],
        ));
  }
}
