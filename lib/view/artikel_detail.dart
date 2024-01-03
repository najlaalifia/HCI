import 'package:baby_care/utils/var_global.dart';
import 'package:baby_care/view/widget/card_artikel.dart';
import 'package:flutter/material.dart';

import '../utils/color_select.dart';

class ArtikelDetail extends StatelessWidget {
  final String title, deskripsi;
  final int index;

  const ArtikelDetail(
      {super.key, required this.title, required this.deskripsi, required this.index});

  @override
  Widget build(BuildContext context) {
    String isi = IsiArtikel.isi_artikel[index]['isi'];

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded))),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: 50,
                      width: 100,
                      margin: EdgeInsets.only(left: 30, right: 30),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [],
                          color: ColorSelect.pinkmuda),
                      child: Text(
                        'Artikel',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox())
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorSelect.pinkmuda),
                child: Column(
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(IsiArtikel.isi_artikel[index]['isi']),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
