import 'package:digital_library_pnup/pages/detail_jurnal.dart';
import 'package:digital_library_pnup/utils/colors.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String cover;
  final String judul;

  Item({required this.cover, required this.judul});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isbookmark = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailJurnal(),
                ));
          },
          child: Container(
            width: 150,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 140,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                      child: Image.asset(
                        widget.cover,
                        fit: BoxFit.cover,
                        height: 100,
                        width: 80,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.judul,
                  maxLines: 5,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 6,
            right: 20,
            child: InkWell(
              onTap: () {
                setState(() {
                  isbookmark = !isbookmark;
                });
              },
              child: isbookmark
                  ? CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorSelect.buttonColor,
                      child: Icon(Icons.bookmark_border_outlined),
                    )
                  : CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(Icons.bookmark_border_outlined),
                    ),
            )),
      ],
    );
  }
}
