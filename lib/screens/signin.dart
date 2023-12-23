import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payquicky/components/input.dart';
import 'package:payquicky/components/txt.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final EmailValue = TextEditingController();
  final PasswordValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 14, 40, 1),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Txt(
              text: "Welcome Back!",
              weight: FontWeight.bold,
              size: 33,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Txt(
                  text: "Email / Phone Number",
                  size: 15,
                  colors: Colors.grey[400],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(15, 34, 63, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(166, 180, 206, 0.788),
                        child: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 235, 235, 235),
                        ),
                      ),
                      Flexible(
                          child: Input(
                        controller: EmailValue,
                        hint: "Enter your email address",
                      )),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Txt(
                  text: "Password",
                  size: 15,
                  colors: Colors.grey[400],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(15, 34, 63, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(166, 180, 206, 0.788),
                        child: Icon(
                          Icons.key,
                          color: Color.fromARGB(255, 235, 235, 235),
                        ),
                      ),
                      Flexible(
                          child: PasswordInput(
                        hint: "Enter your password",
                        controller: PasswordValue,
                      )),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
