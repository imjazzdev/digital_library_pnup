import 'package:digital_library_pnup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'model/item_product1.dart';
import 'model/item_product2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo, Nov'),
      ),
      body: ListView(children: const [
        ItemProduct1(),
        ItemProduct2(),
      ]),
    );
  }
}
