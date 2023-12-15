import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:baby_care/utils/color_select.dart';
import 'package:flutter/material.dart';

class CatatanTambah extends StatefulWidget {
  const CatatanTambah({super.key});

  @override
  State<CatatanTambah> createState() => _CatatanTambahState();
}

class _CatatanTambahState extends State<CatatanTambah> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSelect.pinktua,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
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
                    height: 90,
                    width: 100,
                    margin: EdgeInsets.only(left: 30, right: 30),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Catatan Kesehatan',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width: 70,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Nama Anak',
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isMale = !isMale;
                                      print(isMale);
                                    });
                                  },
                                  child: Container(
                                      width: 70,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: isMale == true
                                          ? Image.asset('assets/male.png')
                                          : Image.asset('assets/female.png')),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox())
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Text(
                        'Usia Anak /tahun',
                        style: TextStyle(fontSize: 18),
                      )),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Text(
                        'Golongan Darah',
                        style: TextStyle(fontSize: 18),
                      )),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Text(
                        'Berat Badan /kg',
                        style: TextStyle(fontSize: 18),
                      )),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Text(
                        'Tinggi Badan /cm',
                        style: TextStyle(fontSize: 18),
                      )),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Text(
                        'Lingkar Kepala /cm',
                        style: TextStyle(fontSize: 18),
                      )),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Riwayat Penyakit',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade100),
              padding: EdgeInsets.all(15),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: 'Write here...', border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Riwayat Alergi',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alergi Makanan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 30, child: TextField()),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Alergi Obat-Obatan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 30, child: TextField())
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.rightSlide,
                      title: 'Data Disimpan',
                      btnOkOnPress: () {
                        // Navigator.pop(context);
                      },
                    ).show();
                  },
                  child: Text(
                    'Simpan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
