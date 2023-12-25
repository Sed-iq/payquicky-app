import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/input.dart';
import 'package:payquicky/components/txt.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/screens/register.dart';

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
      backgroundColor: BG,
      body: ListView(
        children: [
          SafeArea(
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
                            backgroundColor:
                                Color.fromRGBO(166, 180, 206, 0.788),
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
                            backgroundColor:
                                Color.fromRGBO(166, 180, 206, 0.788),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              // TODO: sign in fxn goes here
                              print("Sign up clicked");
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(0, 48),
                                backgroundColor: BG_AMBER),
                            child: Txt(
                              text: "Signin",
                              colors: Colors.black,
                              size: 18,
                            )))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton.icon(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(0, 48),
                              backgroundColor: Color.fromRGBO(15, 34, 63, 1)),
                          onPressed: () {
                            // TODO: Google signin option
                            print("Google Login");
                          },
                          icon: Icon(
                            MdiIcons.google,
                            color: Colors.grey[300],
                          ),
                          label: Txt(
                            text: "Continue with Google",
                            size: 17,
                            weight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Register()));
                  },
                  child: Txt(
                    text: "Create a Pay Quicky Account",
                    weight: FontWeight.bold,
                    size: 17,
                    colors: Colors.amber,
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
