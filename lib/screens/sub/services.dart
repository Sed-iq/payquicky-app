import 'package:flutter/material.dart';
import 'package:payquicky/components/config.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      appBar: AppBar(
        backgroundColor: BG,
        shadowColor: Colors.transparent,
        title: const Row(),
      ),
    );
  }
}
