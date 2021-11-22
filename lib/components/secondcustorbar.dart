import 'package:flutter/material.dart';
import 'package:halalandroid/screens/me/editprofile.dart';

class SecondCustomBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  SecondCustomBar(
    this.title, {
    Key? key,
  })  : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottomOpacity: 0.0,
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
        textAlign: TextAlign.right,
      ),
      leading: TextButton(
        child: const Text(
          "Edit",
          style: TextStyle(color: Colors.green),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditProfile()),
        ),
      ),
      automaticallyImplyLeading: true,
    );
  }
}
