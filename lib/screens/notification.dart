import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Txt(
              text: "Notifications",
              size: 23,
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              thickness: 2,
              color: Colors.blueGrey,
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/notification.png"),
            width: 330,
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Column(
              children: [
                Txt(
                  text: "No notification yet!",
                  size: 24,
                  weight: FontWeight.bold,
                ),
                const Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Divider(
                    thickness: 2.3,
                    color: Color.fromRGBO(114, 128, 154, .988),
                  ),
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Text(
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.8),
                            "Come back here to get information about matches and messages, profile insights and much more!")),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
              .animate()
              .slideY(begin: .2, end: 0, duration: Duration(milliseconds: 350))
              .fadeIn()),
      backgroundColor: BG,
    );
  }
}
