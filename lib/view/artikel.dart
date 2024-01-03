import 'package:baby_care/utils/var_global.dart';
import 'package:baby_care/view/artikel_detail.dart';
import 'package:baby_care/view/widget/card_artikel.dart';
import 'package:flutter/material.dart';

import '../utils/color_select.dart';

class Artikel extends StatelessWidget {
  const Artikel({super.key});

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
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pink.shade100,
                    border: Border.all(color: Colors.pinkAccent)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.search,
                          size: 35,
                        )),
                    Expanded(
                        flex: 3,
                        child: Text('Search...',
                            style:
                                TextStyle(fontSize: 18, color: Colors.grey))),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.menu_rounded,
                          size: 35,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 20, right: 20),
                itemCount: VarGlobal.data_artikel.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArtikelDetail(
                          title: VarGlobal.data_artikel[index]['title'],
                          deskripsi: VarGlobal.data_artikel[index]['deskripsi'],
                          index: index, 
                        ),
                      ),
                    );
                  },
                  child: CardArtikel(
                    title: VarGlobal.data_artikel[index]['title'],
                    deskripsi: VarGlobal.data_artikel[index]['deskripsi'],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
