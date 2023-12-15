import 'package:baby_care/utils/color_select.dart';
import 'package:baby_care/view/catatan_detail.dart';
import 'package:baby_care/view/catatan_tambah.dart';
import 'package:baby_care/view/widget/card_kesehatan.dart';
import 'package:flutter/material.dart';

class Catatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Catatan Kesehatan',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Selalu jaga Kesehatan!!!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/logo.png',
                  height: 90,
                )
              ],
            ),
          ),
          ListView(
            padding: EdgeInsets.all(25),
            shrinkWrap: true,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CatatanDetail(),
                      ));
                },
                child: CardKesehatan(
                  nama: 'Haikal Putra',
                  tinggi: '132',
                  berat: '10',
                  color: ColorSelect.hijaumuda,
                  male: true,
                ),
              ),
              CardKesehatan(
                nama: 'Nanda Putri',
                tinggi: '132',
                berat: '22',
                color: ColorSelect.pinkmuda,
                male: false,
              ),
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CatatanTambah(),
              ));
        },
        backgroundColor: ColorSelect.hijautua,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
