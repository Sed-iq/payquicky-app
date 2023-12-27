import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/txt.dart';

class Notifications_Screen extends StatefulWidget {
  const Notifications_Screen({super.key});

  @override
  State<Notifications_Screen> createState() => _Notifications_ScreenState();
}

class _Notifications_ScreenState extends State<Notifications_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BG,
        shadowColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Txt(
              text: "Notifications",
              size: 21,
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/notification.png"),
              width: 330,
            )
          ],
        ),
      ),
      backgroundColor: BG,
    );
  }
}
