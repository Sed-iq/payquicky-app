import 'package:flutter/material.dart';
import 'package:payquicky/components/txt.dart';

class Input extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  const Input({super.key, required this.controller, required this.hint});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: widget.controller,
      cursorColor: Colors.amber,
      cursorHeight: 20,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          // label: Txt(text: widget.hintText),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          fillColor: Colors.transparent,
          hintText: widget.hint,
          hintStyle: TextStyle(color: Color.fromARGB(255, 167, 163, 163)),
          filled: true),
    );
  }
}

class PasswordInput extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  const PasswordInput(
      {super.key, required this.controller, required this.hint});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  var show = true;
  Color showIconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: widget.controller,
      cursorColor: Colors.amber,
      obscureText: show,
      cursorHeight: 20,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              color: showIconColor,
              onPressed: () {
                setState(() {
                  if (show == true) {
                    setState(() {
                      show = false;
                      showIconColor = Colors.blue;
                    });
                  } else {
                    setState(() {
                      show = true;
                      showIconColor = Colors.grey;
                    });
                  }
                });
              }),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          fillColor: Colors.transparent,
          hintText: widget.hint,
          hintStyle: TextStyle(color: Color.fromARGB(255, 167, 163, 163)),
          filled: true),
    );
  }
}
