import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  final bool showLastIcon;
  final String placeholder;

  const InputPassword(
      {Key? key, this.showLastIcon = false, required this.placeholder})
      : super(key: key);

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
      child: TextField(
          decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        labelText: widget.placeholder,
        labelStyle: new TextStyle(
          fontSize: 12.0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: IconButton(
          onPressed: () {
            print('search button pressed');
          },
          icon: widget.placeholder == "User Name"
              ? const Icon(Icons.person_outline)
              : (widget.placeholder == "E-mail"
                  ? const Icon(Icons.email_outlined)
                  : const Icon(Icons.password_outlined)),
        ),
        suffixIcon: widget.showLastIcon
            ? Container(
                width: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('mic button pressed');
                      },
                      icon: Icon(Icons.remove_red_eye_sharp),
                    ),
                  ],
                ),
              )
            : null,
      )),
    );
  }
}
