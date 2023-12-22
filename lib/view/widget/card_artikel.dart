import 'package:baby_care/utils/color_select.dart';
import 'package:flutter/material.dart';

class CardArtikel extends StatelessWidget {
  final String title, deskripsi;

  const CardArtikel({super.key, required this.title, required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorSelect.pinkmuda,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            deskripsi,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
