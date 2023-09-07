import 'package:digital_library_pnup/utils/colors.dart';
import 'package:flutter/material.dart';

class DetailJurnal extends StatefulWidget {
  const DetailJurnal({super.key});

  @override
  State<DetailJurnal> createState() => _DetailJurnalState();
}

class _DetailJurnalState extends State<DetailJurnal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jurnal'),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(children: [
        Column(
          children: [
            Image.asset(
              'assets/img/intek.png',
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'INTEK: Jurnal Penelitian',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Table(
            columnWidths: const {
              0: FlexColumnWidth(3),
              1: FlexColumnWidth(4),
            },
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Initials",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "INTEK",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Abbreviation",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "j.intek",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Frequency",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "2 issues per year",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "DOI",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Prefix 10.31963",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Print ISSN",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "2339-0700",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Online ISSN",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "2615-5427",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Editor-in-chief",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Dr.Eng. Abdul Kadir Muhammad, S.T.,M.Eng.",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Publisher",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Unit Pengembangan Jurnal dan Publikasi",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Afiliasi",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Politeknik Negeri Ujung Pandang",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Citation Analysis",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "SCOPUS | Web of Science | Google Scholar",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "OAI Journal",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "http://jurnal.poliupg.ac.id/index.php/Intek/oai",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                  height: 45,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ColorSelect.buttonColor,
                            ColorSelect.buttonColor.withOpacity(0.7),
                          ])),
                  child: Text(
                    'Baca Online',
                    style: TextStyle(color: ColorSelect.tertiaryTextColor),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  height: 45,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ColorSelect.buttonColor,
                            ColorSelect.buttonColor.withOpacity(0.7),
                          ])),
                  child: Text(
                    'Download',
                    style: TextStyle(color: ColorSelect.tertiaryTextColor),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
