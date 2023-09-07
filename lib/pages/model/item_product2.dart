import 'package:digital_library_pnup/pages/model/item.dart';
import 'package:flutter/material.dart';

class ItemProduct2 extends StatelessWidget {
  const ItemProduct2({super.key});

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
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Item(
                    cover: 'assets/img/jpes.png',
                    judul: 'Journal of Power Energy System'),
                Item(
                    cover: 'assets/img/prosiding.png',
                    judul:
                        'Seminar Nasional Hasil Penelitian & Pengabdian Kepada Masyarakat'),
                Item(
                    cover: 'assets/img/intensip.png',
                    judul: 'Jurnal INTENSIP (Jurnal Informasi Teknik Sipil)'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
