import "package:flutter/material.dart";
import "package:payquicky/screens/dashboard.dart";
// import "package:payquicky/screens/register.dart";
// import "package:payquicky/screens/homescreen.dart";
// import "package:payquicky/screens/signin.dart";

void main() {
  runApp(const App());
}

class MyScrollBehaviour extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyScrollBehaviour(),
      title: "Payquicky",
      home: const Dashboard(),
    );
  }
}
