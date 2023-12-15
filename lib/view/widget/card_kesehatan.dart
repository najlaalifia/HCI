import 'package:baby_care/utils/color_select.dart';
import 'package:flutter/material.dart';

class CardKesehatan extends StatelessWidget {
  final String nama, tinggi, berat;
  final Color color;
  bool male = true;

  CardKesehatan(
      {super.key,
      required this.nama,
      required this.tinggi,
      required this.berat,
      required this.color,
      required this.male});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorSelect.hijautua)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                nama,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            male == true
                ? Image.asset('assets/male.png')
                : Image.asset('assets/female.png')
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tinggi\nBadan',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Text(tinggi,
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold)),
                          Text('cm',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Berat\nBadan',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Text(berat,
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold)),
                          Text('kg',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
