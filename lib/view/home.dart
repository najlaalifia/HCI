import 'package:baby_care/utils/color_select.dart';
import 'package:baby_care/view/artikel.dart';
import 'package:baby_care/view/forum_diskusi.dart';
import 'package:baby_care/view/jadwal.dart';
import 'package:baby_care/view/konten_edukasi.dart';
import 'package:baby_care/view/profile.dart';
import 'package:baby_care/view/widget/card_jadwal.dart';
import 'package:baby_care/view/widget/card_jadwal_home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome, Parents!',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(
                      'How was your day?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: ColorSelect.hijaumuda,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      icon: Icon(Icons.person_3_sharp,
                          size: 35, color: ColorSelect.hijautua)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink.shade100,
                border: Border.all(color: Colors.pinkAccent)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.search,
                  size: 35,
                ),
                Text(
                  'Search...',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Artikel(),
                        ));
                  },
                  child: Icon(
                    Icons.menu_rounded,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Konten Edukasi',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorSelect.hijautua),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KontenEdukasi(),
                        ));
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorSelect.hijautua),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(right: 15),
                height: 200,
                width: 250,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorSelect.pinkmuda,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/konten-edukasi.png',
                      height: 120,
                    ),
                    Text(
                      'Kata Pertama, Lagu dan Nursery Rhymes untuk Bayi bersama kak Nisa',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jadwal Hari ini',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorSelect.hijautua),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Jadwal(),
                        ));
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorSelect.hijautua),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  CardJadwalHome(
                    tanggal: '12\nSenin',
                    form1: 'Imunisasi',
                    form2: 'Urut bayi',
                    jam1: '09.00',
                    jam2: '15.00',
                  ),
                  CardJadwalHome(
                    tanggal: '12\nSenin',
                    form1: 'Imunisasi',
                    form2: 'Urut bayi',
                    jam1: '09.00',
                    jam2: '15.00',
                  ),
                  CardJadwalHome(
                    tanggal: '12\nSenin',
                    form1: 'Imunisasi',
                    form2: 'Urut bayi',
                    jam1: '09.00',
                    jam2: '15.00',
                  )
                ]),
          )
        ],
      )),
    );
  }
}
