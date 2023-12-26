import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/input.dart';
import 'package:payquicky/components/txt.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Txt(
                text: "Home",
                size: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(15, 34, 63, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(167, 255, 191, 0),
                        child: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 235, 235, 235),
                        ),
                      ),
                      Flexible(
                          child: Input(
                        hint: "Search (P2P)",
                        controller: searchValue,
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
                                        // TODO: qr code scan fxn
                                        print("Scan");
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
                                        // TODO: Naviate to notifications
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
