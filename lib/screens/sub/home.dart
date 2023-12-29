import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/txt.dart';
import 'package:payquicky/screens/notification.dart';

// Home screen
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final searchValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      appBar: AppBar(
        backgroundColor: BG,
        shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            Txt(
              text: "Welcome, ",
              size: 23,
              weight: FontWeight.bold,
            ),
            Txt(
              text: "Jaden",
              size: 23,
              weight: FontWeight.bold,
            ) // TODO: Change to user's name

            //   Flexible(
            //     child: Container(
            //       padding: const EdgeInsets.symmetric(horizontal: 10),
            //       decoration: const BoxDecoration(
            //           color: Color.fromRGBO(15, 34, 63, 1),
            //           borderRadius: BorderRadius.all(Radius.circular(50))),
            //       child: Row(
            //         children: [
            //           CircleAvatar(
            //             backgroundColor: Color.fromARGB(167, 255, 191, 0),
            //             child: Icon(
            //               Icons.search,
            //               color: Color.fromARGB(255, 235, 235, 235),
            //             ),
            //           ),
            //           Flexible(
            //               child: Input(
            //             hint: "Search (P2P)",
            //             controller: searchValue,
            //           )),
            //         ],
            //       ),
            //     ),
            //   ),
            // ],
          ]),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 200,
                    padding: const EdgeInsets.fromLTRB(23, 20, 23, 20),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(15, 34, 63, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Txt(
                                  text: "Multi-Coin Wallet",
                                  size: 16.5,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const QrCodeScan();
                                            });
                                      },
                                      child: CircleAvatar(
                                        radius: 17,
                                        backgroundColor:
                                            Color.fromARGB(148, 255, 193, 7),
                                        child: Icon(
                                          MdiIcons.qrcodeScan,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    Notifications_Screen()));
                                      },
                                      child: CircleAvatar(
                                        radius: 17,
                                        backgroundColor:
                                            Color.fromARGB(148, 255, 193, 7),
                                        child: Icon(
                                          MdiIcons.bell,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Txt(
                              text: "\$0.00",
                              size: 27,
                              weight: FontWeight.w500,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // TODO: Navigate to Send page
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 23,
                                    backgroundColor:
                                        Color.fromARGB(148, 255, 193, 7),
                                    child: Icon(
                                      FontAwesome.arrow_up_solid,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Txt(text: "Send")
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO: Navigate to Send page
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 23,
                                    backgroundColor:
                                        Color.fromARGB(148, 255, 193, 7),
                                    child: Icon(
                                      FontAwesome.arrow_down_solid,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Txt(text: "Receive")
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO: Navigate to Send page
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 23,
                                    backgroundColor:
                                        Color.fromARGB(148, 255, 193, 7),
                                    child: Icon(
                                      FontAwesome.coins_solid,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Txt(text: "Sell")
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO: Navigate to Send page
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 23,
                                    backgroundColor:
                                        Color.fromARGB(148, 255, 193, 7),
                                    child: Icon(
                                      FontAwesome.money_bills_solid,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Txt(text: "Earn")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
              const cryptoList()
            ],
          )),
    );
  }

  // Widget QrCodeScan() {

  // }
}

class QrCodeScan extends StatefulWidget {
  const QrCodeScan({super.key});

  @override
  State<QrCodeScan> createState() => _QrCodeScanState();
}

class _QrCodeScanState extends State<QrCodeScan> {
  int screen = 1;
  bool animatePop = false;
  Color btnColor(int id) {
    if (screen == id) {
      return Colors.amber;
    } else {
      return Colors.white;
    }
  }

  Future<bool> _onPop() async {
    setState(
      () {
        animatePop = true;
      },
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onPop,
      child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 560,
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(66, 100, 150, 0.699),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () => setState(() {
                                          screen = 1;
                                        }),
                                    child: Txt(
                                      text: "My Code",
                                      size: 19.3,
                                      colors: btnColor(1),
                                      weight: FontWeight.w600,
                                    )),
                                TextButton(
                                    onPressed: () => setState(() {
                                          screen = 2;
                                        }),
                                    child: Txt(
                                      text: "Scan Code",
                                      size: 19.3,
                                      colors: btnColor(2),
                                      weight: FontWeight.w600,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            render()
                          ],
                        ),
                      )
                    ],
                  )))
          .animate()
          .slideY(begin: 0.7, end: 0, duration: Duration(milliseconds: 150))
          .animate(target: animatePop == true ? 1 : 0)
          .slideY(begin: 0, end: 1.3),
    );
  }

  Widget render() {
    switch (screen) {
      case 1:
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Txt(
                text: "Jaden's Account",
                size: 23,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 8,
              ),
              Txt(
                text: "Pay quicky account",
                colors: Colors.grey,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 30,
              ),
              Icon(
                BoxIcons.bx_qr,
                color: Colors.white,
                size: 100,
              ), //TODO: Icon here is a placeholder change to image gotten
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: BG_AMBER),
                  child: Txt(
                    size: 17,
                    weight: FontWeight.w600,
                    text: "Share code",
                    colors: Color.fromARGB(255, 245, 252, 255),
                  ))
            ],
          ),
        );

      default:
        return Container();
    }
  }
}

// ignore: camel_case_types
class cryptoList extends StatefulWidget {
  const cryptoList({super.key});

  @override
  State<cryptoList> createState() => _cryptoListState();
}

// ignore: camel_case_types
class _cryptoListState extends State<cryptoList> {
  int btnSelectedState = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectBtn(
                id: 1,
                selected: btnSelectedState,
                btnTitle: "Crypto",
                onPressed: () {
                  setState(() {
                    btnSelectedState = 1;
                  });
                },
              ),
              SelectBtn(
                id: 2,
                selected: btnSelectedState,
                btnTitle: "NFTs",
                onPressed: () {
                  setState(() {
                    btnSelectedState = 2;
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        ItemListing(
          icon: MdiIcons.bitcoin,
          price: 30599.99,
          title: "BTC 🔥",
        ),
        ItemListing(
          icon: MdiIcons.ethereum,
          price: 1690.96,
          title: "ETH 🔥",
        ),
        ItemListing(
          icon: MdiIcons.codeString,
          price: 30.93,
          title: "SOL",
        ),
      ],
    );
  }
}

class SelectBtn extends StatelessWidget {
  final Function onPressed;
  final int selected;
  final String btnTitle;
  final int id;
  const SelectBtn(
      {super.key,
      required this.onPressed,
      required this.btnTitle,
      required this.selected,
      required this.id});

  Color btnBg() {
    if (selected == id) {
      return Color.fromARGB(104, 224, 170, 8);
    } else {
      return Colors.transparent;
    }
  }

  Color btnTxt() {
    if (selected == id) {
      return Colors.amber;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)), color: btnBg()),
        width: 80,
        height: 40,
        child: Align(
          child: Txt(
            text: btnTitle,
            weight: FontWeight.w500,
            colors: btnTxt(),
            size: 18,
          ),
        ),
      ),
    );
  }
}

class ItemListing extends StatelessWidget {
  final IconData icon;
  final String title;
  final double price;
  const ItemListing(
      {super.key,
      required this.price,
      required this.title,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.5, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Txt(
                    text: title,
                    // text: "BTC ",
                    size: 20,
                    weight: FontWeight.w600,
                  ), // TODO: Make variable gotten from server
                  Txt(
                    text: "\$$price",
                    colors: Colors.grey[600],
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Txt(
                text: "$price",
                size: 20,
              ), // TODO: Make variable gotten from server
              Txt(
                text: "\$$price",
                colors: Colors.grey[600],
              )
            ],
          )
        ],
      ),
    );
  }
}
