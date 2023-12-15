import 'package:baby_care/utils/var_global.dart';
import 'package:baby_care/view/widget/card_artikel.dart';
import 'package:flutter/material.dart';

import '../utils/color_select.dart';

class ArtikelDetail extends StatelessWidget {
  final String title, deskripsi;

  const ArtikelDetail(
      {super.key, required this.title, required this.deskripsi});

  @override
  Widget build(BuildContext context) {
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
                    Text('''

Tantrum adalah kondisi saat anak mengeluarkan emosinya dengan beragam cara. Tantrum pada anak biasanya terjadi pada anak yang masih berusia 1-4 tahun karena ketidakmampuan anak dalam menjelaskan apa yang menjadi keinginannya. 

Cara Mengatasi Tantrum pada Anak

1. Berikan Pelukan pada Anak
Memberikan pelukan pada anak berguna untuk meredakan emosinya.

2. Temani Anak
Menemani anak saat mereka tantrum berguna agar mereka tidak merasa diabaikan.

3. Alihkan Perhatian Anak
Mengalihkan perhatian anak bisa dengan mengajak jalan-jalan atau memberikan makanan favoritnya.

4. Hindari Hukuman Fisik
Memberikan hukuman fisik seperti memukul anak pada saat tantrum bukanlah hal yang baik. Jenis pola asuh seperti ini justru akan memberikan contoh buruk pada anak.

5. Cari Tahu Penyebabnya
Jika tantrum pada anak sudah mereda, ajak anak berkomunikasi untuk tahu penyebabnya.
 

Jika Anda telah melakukan sejumlah cara di atas, tapi tantrum anak tetap sering terjadi dan semakin parah, segera konsultasikan dengan dokter Spesialis Anak Siloam Hospitals untuk mendapatkan penanganan tepat sesuai jenis dan penyebab tantrum.
'''),
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
