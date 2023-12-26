import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/input.dart';
import 'package:payquicky/components/txt.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final searchValue = TextEditingController();
  int selectedService = 1;
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
                text: "Card",
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
                        hint: "Search Services",
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
      //   body: Container(
      //     padding: EdgeInsets.symmetric(horizontal: 12),
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             SelectBtn(
      //                 onPressed: () {
      //                   setState(() {
      //                     selectedService = 1;
      //                   });
      //                 },
      //                 btnTitle: "Airtime",
      //                 selected: selectedService,
      //                 id: 1),
      //             SelectBtn(
      //                 onPressed: () {
      //                   setState(() {
      //                     selectedService = 2;
      //                   });
      //                 },
      //                 btnTitle: "Data",
      //                 selected: selectedService,
      //                 id: 2),
      //             SelectBtn(
      //                 onPressed: () {
      //                   setState(() {
      //                     selectedService = 3;
      //                   });
      //                 },
      //                 btnTitle: "Electricity",
      //                 selected: selectedService,
      //                 id: 3),
      //             SelectBtn(
      //                 onPressed: () {
      //                   setState(() {
      //                     selectedService = 4;
      //                   });
      //                 },
      //                 btnTitle: "Cable Sub",
      //                 selected: selectedService,
      //                 id: 4),
      //           ],
      //         ),
      //         const Divider(
      //           color: Colors.white,
      //           thickness: 2,
      //         ),
      //         render()
      //       ],
      //     ),
      //   ),
      // );
    );
  }

  Widget render() {
    switch (selectedService) {
      case 1:
        return Container(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(15, 34, 63, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Txt(
                      text: "Buy Airtime",
                      size: 28,
                      weight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.double_arrow,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(15, 34, 63, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Txt(
                      text: "Buy Data",
                      size: 28,
                      weight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.double_arrow,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        );
        break;
      default:
        return Container();
    }
  }
}

class SelectBtn extends StatelessWidget {
  final Function onPressed;
  final int selected;
  final String btnTitle;
  final int id;
  SelectBtn(
      {super.key,
      required this.onPressed,
      required this.btnTitle,
      required this.selected,
      required this.id});

  Color btnBg() {
    if (selected == id) {
      return const Color.fromARGB(104, 224, 170, 8);
    } else {
      return const Color.fromRGBO(15, 34, 63, 1);
    }
  }

  Color btnTxt = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: btnBg()),
        width: 97,
        height: 43,
        child: Align(
          child: Txt(
            text: btnTitle,
            weight: FontWeight.w500,
            colors: btnTxt,
            size: 13,
          ),
        ),
      ),
    );
  }
}
