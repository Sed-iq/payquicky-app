import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/input.dart';
import 'package:payquicky/components/txt.dart';
import 'package:payquicky/screens/signin.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final middlename = TextEditingController();
  final phonenumber = TextEditingController();
  final email = TextEditingController();
  final verificationcode = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

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
                            text: "Signup",
                            weight: FontWeight.bold,
                            size: 33,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(15, 34, 63, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(166, 180, 206, 0.788),
                                  child: Icon(
                                    CupertinoIcons.person_fill,
                                    color: Color.fromARGB(255, 235, 235, 235),
                                  ),
                                ),
                                Flexible(
                                    child: Input(
                                  hint: "First Name",
                                  controller: firstname,
                                )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(15, 34, 63, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(166, 180, 206, 0.788),
                                  child: Icon(
                                    CupertinoIcons.person_fill,
                                    color: Color.fromARGB(255, 235, 235, 235),
                                  ),
                                ),
                                Flexible(
                                    child: Input(
                                  hint: "Last Name",
                                  controller: lastname,
                                )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(15, 34, 63, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(166, 180, 206, 0.788),
                                  child: Icon(
                                    CupertinoIcons.person_fill,
                                    color: Color.fromARGB(255, 235, 235, 235),
                                  ),
                                ),
                                Flexible(
                                    child: Input(
                                  hint: "Middle Name(Optional)",
                                  controller: middlename,
                                )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(15, 34, 63, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(166, 180, 206, 0.788),
                                  child: Icon(
                                    MdiIcons.email,
                                    color: Color.fromARGB(255, 235, 235, 235),
                                  ),
                                ),
                                Flexible(
                                    child: Input(
                                  hint: "Email Address",
                                  controller: email,
                                )),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 8),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(15, 34, 63, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color.fromRGBO(
                                              166, 180, 206, 0.788),
                                          child: Icon(
                                            MdiIcons.shield,
                                            color: Color.fromARGB(
                                                255, 235, 235, 235),
                                          ),
                                        ),
                                        Flexible(
                                            child: Input(
                                          hint: "Verificatin Code",
                                          controller: verificationcode,
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(153, 120, 15, 1)),
                                    child: Txt(
                                      text: "Send code",
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(15, 34, 63, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
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
                                  controller: password,
                                )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(15, 34, 63, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
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
                                  hint: "Confirm your password",
                                  controller: passwordConfirm,
                                )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
                                          fixedSize: Size.fromHeight(48),
                                          backgroundColor: BG_AMBER),
                                      child: Txt(
                                        text: "Signup",
                                        colors: Colors.black,
                                        size: 18,
                                      )))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Txt(
                                text: "Already have an account? ",
                                size: 16.3,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const Signin()));
                                  },
                                  child: Text(
                                    "Sign in to your account",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                      fontSize: 16.3,
                                    ),
                                  ),
                                ),
                              )

                              // Txt(
                              //   text: "Sign Up for an entity account",
                              //   size: 16.3,
                              // )
                            ],
                          )
                        ]))),
          ],
        ));
  }
}
