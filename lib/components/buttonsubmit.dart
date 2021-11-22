import 'package:flutter/material.dart';

class ButtonSubmit extends StatefulWidget {
  final String nameButton;
  final VoidCallback onPressed;
  const ButtonSubmit({Key? key, this.nameButton = "", required this.onPressed})
      : super(key: key);

  @override
  _ButtonSubmitState createState() => _ButtonSubmitState();
}

class _ButtonSubmitState extends State<ButtonSubmit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        child: Text(
          widget.nameButton,
          style: const TextStyle(fontSize: 16.0),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          primary: Colors.green,
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
