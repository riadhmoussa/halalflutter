import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  const RoundButton({Key? key}) : super(key: key);

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.search,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.white.withOpacity(0.7),
        padding: EdgeInsets.all(2),
      ),
    );
  }
}
