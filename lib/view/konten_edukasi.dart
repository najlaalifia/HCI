import 'package:flutter/material.dart';

import '../utils/color_select.dart';

class KontenEdukasi extends StatelessWidget {
  const KontenEdukasi({super.key});

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
                  Expanded(flex: 1, child: SizedBox()),
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
                        'Konten Edukasi',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox())
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                itemCount: 14,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(15),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorSelect.pinkmuda,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/konten-edukasi.png',
                        height: 90,
                      ),
                      Text(
                        'Kata Pertama, Lagu dan Nursery Rhymes untuk Bayi bersama kak Nisa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
