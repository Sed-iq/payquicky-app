import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/baseBtn.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/input.dart';
import "package:flutter_animate/flutter_animate.dart";
import 'package:payquicky/components/txt.dart';
import 'package:payquicky/screens/sub/settings.dart';
import 'package:payquicky/screens/sub/home.dart';
import 'package:payquicky/screens/sub/services.dart';
import 'package:icons_plus/icons_plus.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int screen = 1;
  Widget render(BuildContext context) {
    // Renders the screen based on the state
    switch (screen) {
      case 1:
        return const Home();
      case 2:
        return const Services();
      case 4:
        return const Settings();
      default:
        return const Home();
    }
  }

  Future<bool> _onPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final searchValue = TextEditingController();
    return Scaffold(
      backgroundColor: BG,
      body: WillPopScope(
        onWillPop: _onPop,
        child: Stack(
          children: [
            render(context),
            Align(alignment: Alignment.bottomCenter, child: BaseNav())
          ],
        ),
      ),
    );
  }

  Widget BaseNav() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      height: 67,
      decoration: BoxDecoration(
        color: Color.fromRGBO(15, 34, 63, 1),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Btn(
            title: "Home",
            icon: MdiIcons.home,
            onPressed: () {
              // TODO: Custom function here
              setState(() {
                screen = 1;
              });
            },
            id: 1,
            screen: screen,
          ),
          Btn(
            title: "Card",
            icon: BoxIcons.bx_credit_card,
            onPressed: () {
              // TODO: Custom function here
              setState(() {
                screen = 2;
              });
              print(screen);
            },
            id: 2,
            screen: screen,
          ),
          Btn(
            title: "Transactions",
            icon: MdiIcons.wallet,
            onPressed: () {
              // TODO: Custom function here
              setState(() {
                screen = 3;
              });
            },
            id: 3,
            screen: screen,
          ),
          Btn(
            title: "Settings",
            icon: MdiIcons.cog,
            onPressed: () {
              // TODO: Custom function here
              setState(() {
                screen = 4;
              });
            },
            id: 4,
            screen: screen,
          ),
        ],
      ),
    );
  }
}

// class BaseNav extends StatefulWidget {
//   final Function onPressed;
//   const BaseNav({super.key, required this.onPressed});

//   @override
//   State<BaseNav> createState() => _BaseNavState();
// }

// class _BaseNavState extends State<BaseNav> {
//   bool homeSelect = false;
//   bool serviceSelect = false;
//   bool txnSelect = false;
//   bool settingsSelect = false;
//   @override
//   Widget build(BuildContext context) {
//      }
// }
