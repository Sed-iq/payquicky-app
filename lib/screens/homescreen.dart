import 'package:flutter/material.dart';
import 'package:payquicky/components/txt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 14, 40, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [Txt(text: "Top")]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Txt(
                    text: "as guest",
                    decoration: TextDecoration.underline,
                    size: 20,
                    weight: FontWeight.bold,
                    colors: Color.fromARGB(255, 223, 172, 22),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
