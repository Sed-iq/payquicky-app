import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/input.dart';
import 'package:payquicky/components/txt.dart';

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
          child: Padding(
        padding: const EdgeInsets.only(right: 18, left: 18),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const UserModal());
                      },
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(120, 223, 176, 35),
                        child: Icon(
                          FontAwesome.user_astronaut_solid,
                          color: Colors.white,
                        ),
                        radius: 34,
                      ).animate().scale(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Txt(text: "Id: 0000001"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Txt(
                            text: "Account Settings",
                            weight: FontWeight.bold,
                            size: 21.1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromRGBO(15, 34, 63, 1)),
                                  // style: TextButton.styleFrom(
                                  //     backgroundColor:
                                  //         ),
                                  child: Txt(
                                    text: "Unverified account",
                                    size: 12,
                                    weight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromRGBO(15, 34, 63, 1)),
                                  // style: TextButton.styleFrom(
                                  //     backgroundColor:
                                  //         ),
                                  child: Txt(
                                    text: "Verify Account",
                                    size: 12,
                                    weight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // TODO: Create a user action here.
                    // Decide
                    print("User action");
                  },
                  child: Ink(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(120, 223, 176, 35),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Icon(
                        Icons.double_arrow,
                        color: Colors.white,
                        size: 15,
                      )),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Options(
                      title: "Action Required",
                      icon: FontAwesome.circle_exclamation_solid,
                      description:
                          "You are required to complete identity verification to access to PayQuicky services",
                      bg: Color.fromARGB(61, 223, 176, 35),
                    ).animate().shakeX(
                        curve: Curves.ease, delay: Duration(milliseconds: 350)),
                  ),
                  Divider(
                    color: Color.fromRGBO(66, 100, 151, 1),
                    thickness: 2,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Options(
                            title: "General Settings",
                            description:
                                "Change Theme and Notification settings."),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          thickness: 2.4,
                          color: Color.fromRGBO(66, 100, 151, 1),
                          indent: 80,
                          endIndent: 80,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Options(
                            title: "Security Settings",
                            description: "Update pin and passwords."),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          thickness: 2.4,
                          color: Color.fromRGBO(66, 100, 151, 1),
                          indent: 80,
                          endIndent: 80,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Options(
                            title: "Rate Alert Settings",
                            description: "View and Update rate alerts."),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          thickness: 2.4,
                          color: Color.fromRGBO(66, 100, 151, 1),
                          indent: 80,
                          endIndent: 80,
                        )
                      ],
                    ),
                  ),
                  Options(
                      title: "Service Status",
                      description: "Available and unavailable services."),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class Options extends StatelessWidget {
  final Color? bg;
  final String title;
  final String description;
  final IconData? icon;
  const Options(
      {super.key,
      required this.title,
      required this.description,
      this.bg,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
          color: bg ?? const Color.fromRGBO(15, 34, 63, 1),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(builder: (BuildContext cont) {
            if (icon != null) {
              return Icon(icon, color: Colors.amber, size: 19);
            } else {
              return Container();
            }
          }),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Txt(
                    text: title,
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Icon(
            Icons.double_arrow,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class UserModal extends StatefulWidget {
  const UserModal({super.key});

  @override
  State<UserModal> createState() => _UserModalState();
}

class _UserModalState extends State<UserModal> {
  bool animatePop = false;
  Future<bool> _onPop() async {
    setState(() {
      animatePop = true;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onPop,
      child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 700,
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(110, 154, 221, 0.842),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Divider(
                        color: Colors.grey[300],
                        thickness: 3,
                        endIndent: 180,
                        indent: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: [
                            Txt(
                              text: "Profile Detail",
                              colors: Color.fromARGB(255, 0, 13, 40),
                              size: 34,
                              weight: FontWeight.bold,
                            ),
                            Divider(
                              thickness: 1.4,
                              color: BG,
                              indent: 150,
                              endIndent: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              child: CircleAvatar(
                                backgroundColor: BG_AMBER,
                                radius: 50,
                                child: Brand(
                                  Brands.human_torch,
                                  size: 40,
                                ),
                              ),
                            ),
                            //TODO: Photo uploading functionality
                            ModalInput()
                          ],
                        ),
                      ),
                    ],
                  )))
          .animate()
          .slideY(begin: 0.7, end: 0, duration: Duration(milliseconds: 150))
          .animate(target: animatePop == true ? 1 : 0)
          .slideY(begin: 0, end: 1.3),
    );
  }
}

class ModalInput extends StatelessWidget {
  // For popup
  const ModalInput({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(150, 255, 193, 7),
          borderRadius: const BorderRadius.all(Radius.circular(14))),
      child: Row(
        children: [],
      ),
    );
  }
}
