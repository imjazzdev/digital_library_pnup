import 'package:digital_library_pnup/pages/model/item.dart';
import 'package:flutter/material.dart';

class ItemProduct1 extends StatelessWidget {
  const ItemProduct1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      padding: EdgeInsets.only(left: 15, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Portal E-Journal System PNUP',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ))
            ],
          ),
          // Item(
          //     cover: 'assets/img/intek.png', judul: 'INTEK: Jurnal Penelitian'),
          Container(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Item(
                    cover: 'assets/img/intek.png',
                    judul: 'INTEK: Jurnal Penelitian'),
                Item(
                    cover: 'assets/img/akunsika.png',
                    judul: 'AKUNSIKA: Jurnal Akuntansi dan Keuangan'),
                Item(
                    cover: 'assets/img/sinergi.png',
                    judul: 'Jurnal Sinergi Jurusan Teknik Mesin'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
