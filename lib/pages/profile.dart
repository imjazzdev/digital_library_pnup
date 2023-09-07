import 'package:digital_library_pnup/pages/signin.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/img/profile.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nov',
                        maxLines: 3,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '42519xxx',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Account',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('Informasi Pribadi'),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
            ListTile(
              title: Text('Edit Profil'),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
            ListTile(
              title: Text('Pengaturan'),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
            ListTile(
              title: Text('Koleksi'),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
            ListTile(
              title: Text('Riwayat'),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: Text(
                'Keluar',
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                        (route) => false);
                  },
                  icon: Icon(
                    Icons.logout_rounded,
                    size: 28,
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
