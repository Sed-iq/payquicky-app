import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payquicky/components/config.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [],
          ),
        ],
      )),
    );
  }
}
