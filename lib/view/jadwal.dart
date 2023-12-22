import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:baby_care/view/widget/card_jadwal.dart';
import 'package:flutter/material.dart';

import '../utils/color_select.dart';

class Jadwal extends StatelessWidget {
  const Jadwal({super.key});

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
                        'Jadwal',
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
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CardJadwal(
                    tanggal: '12 Des\nSenin',
                    form1: 'Jemur',
                    jam1: '08.00',
                    form2: 'Imunisasi',
                    jam2: '09.00',
                    form3: 'Urut bayi',
                    jam3: '15.00',
                  ),
                  CardJadwal(
                    tanggal: '13 Des\nSelasa',
                    form1: 'Jemur',
                    jam1: '08.00',
                    form2: 'Urut bayi',
                    jam2: '15.00',
                  ),
                  CardJadwal(
                    tanggal: '14 Des\nRabu',
                    form1: 'Jemur',
                    jam1: '08.00',
                    form2: 'Urut bayi',
                    jam2: '15.00',
                  ),
                  CardJadwal(
                    tanggal: '15 Des\nKamis',
                    form1: 'Jemur',
                    jam1: '08.00',
                    form2: 'Urut bayi',
                    jam2: '15.00',
                  ),
                ],
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Tambahkan Jadwal Baru',
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tanggal, Bulan, Hari',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: ColorSelect.pinkmuda,
                              filled: true,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Jenis Kegiatan',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text('Pukul',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: ColorSelect.pinkmuda,
                                      filled: true,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey.shade50,
                                        filled: true,
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: ColorSelect.pinkmuda,
                                      filled: true,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey.shade50,
                                        filled: true,
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: ColorSelect.pinkmuda,
                                      filled: true,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey.shade50,
                                        filled: true,
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: ColorSelect.pinkmuda,
                                      filled: true,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey.shade50,
                                        filled: true,
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ).show();
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
