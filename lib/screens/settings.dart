import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(120, 223, 176, 35),
                      child: Icon(
                        FontAwesome.user_astronaut_solid,
                        color: Colors.white,
                      ),
                      radius: 34,
                    ).animate().scale(),
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
          ],
        ),
      )),
    );
  }
}
