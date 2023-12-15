import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:baby_care/utils/color_select.dart';
import 'package:baby_care/view/catatan_detail_edit.dart';
import 'package:flutter/material.dart';

class CatatanDetail extends StatefulWidget {
  const CatatanDetail({super.key});

  @override
  State<CatatanDetail> createState() => _CatatanDetailState();
}

class _CatatanDetailState extends State<CatatanDetail> {
  @override
  Widget build(BuildContext context) {
    bool isMale = true;
    return Scaffold(
      backgroundColor: ColorSelect.hijautua,
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
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Haikal Putra',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/male.png')
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
              padding: EdgeInsets.all(10),
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
                style: TextStyle(
                  fontSize: 18,
                ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Vaksin',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Tambahkan Riwayat Vaksin',
                            body: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade100),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Jenis Vaksin',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 30, child: TextField()),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Tanggal Vaksin',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 30, child: TextField())
                                    ],
                                  ),
                                )
                              ],
                            ),
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jenis Vaksin',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField()),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Tanggal Vaksin',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField())
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
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jenis Vaksin',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField()),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Tanggal Vaksin',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField())
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Imunisasi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Tambahkan Riwayat Imunisasi',
                            body: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade100),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Jenis Imunisasi',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 30, child: TextField()),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Tanggal Imunisasi',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 30, child: TextField())
                                    ],
                                  ),
                                )
                              ],
                            ),
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jenis Imunisasi',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField()),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Tanggal Imunisasi',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField())
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
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jenis Imunisasi',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField()),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Tanggal Imunisasi',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField())
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Catatan ke Dokter Gigi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Tambahkan Catatan ke Dokter Gigi',
                            body: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade100),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Tanggal ke Dokter Gigi',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 30, child: TextField()),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Perawatan yg diberikan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 30, child: TextField())
                                    ],
                                  ),
                                )
                              ],
                            ),
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tanggal ke Dokter Gigi',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField()),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Perawatan yang diberikan',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField())
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
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tanggal ke Dokter Gigi',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField()),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Perawatan yang diberikan',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 30, child: TextField())
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatatanDetailEdit(),
                        ));
                  },
                  child: Text(
                    'Edit Data',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
