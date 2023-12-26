import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payquicky/components/config.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: BG),
    );
  }
}
