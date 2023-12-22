import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:baby_care/utils/color_select.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class CatatanTambah extends StatefulWidget {
  const CatatanTambah({super.key});

  @override
  State<CatatanTambah> createState() => _CatatanTambahState();
}

class _CatatanTambahState extends State<CatatanTambah> {
  final namaController = TextEditingController();
  final jenisKelaminController = TextEditingController();
  final usiaAnakController = TextEditingController();
  final golonganDarahController = TextEditingController();
  final beratBadanController = TextEditingController();
  final tinggiBadanController = TextEditingController();
  final lingkarKepalaController = TextEditingController();
  final riwayatPenyakitController = TextEditingController();
  final alergiMakananController = TextEditingController();
  final alergiObatController = TextEditingController();
  bool isMale = true;

  @override
  void dispose() {
    // TODO: implement dispose
    namaController.dispose();
    jenisKelaminController.dispose();
    usiaAnakController.dispose();
    golonganDarahController.dispose();
    beratBadanController.dispose();
    tinggiBadanController.dispose();
    lingkarKepalaController.dispose();
    riwayatPenyakitController.dispose();
    alergiMakananController.dispose();
    alergiObatController.dispose();
    super.dispose();
  }

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
                        onPressed: () async {
                          
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
                                    controller: namaController ,
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
                        controller: usiaAnakController,
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
                        controller: golonganDarahController,
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
                        controller: beratBadanController,
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
                        controller: tinggiBadanController,
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
                        controller: lingkarKepalaController,
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
                controller: riwayatPenyakitController,
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
                  SizedBox(height: 30, child: TextField(controller: alergiMakananController,)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Alergi Obat-Obatan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 30, child: TextField(controller: alergiObatController,))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () async {
                    final box = GetStorage();
                    final token = box.read("token");
                    print(token);
                    final response = await http.post(
                      Uri.parse("http://localhost:8000/api/anak/create"),
                      body: json.encode({
                        "nama": namaController.text,
                        "is_male": isMale ? 1 : 0,
                        "usia_anak": int.parse(usiaAnakController.text),
                        "golongan_darah": golonganDarahController.text,
                        "berat_badan": int.parse(beratBadanController.text),
                        "tinggi_badan": int.parse(tinggiBadanController.text),
                        "lingkar_kepala": int.parse(lingkarKepalaController.text),
                        "riwayat_penyakit": riwayatPenyakitController.text,
                        "alergi_makanan": alergiMakananController.text,
                        "alergi_obat": alergiObatController.text,
                      }),
                      headers: <String, String> {
                        "Content-Type": 'application/json; charset=UTF-8',
                        "Authorization": "Bearer $token"
                      },
                    );
                  if(response.statusCode == 200) {
                    final data = json.decode(response.body)['data'];
                    print(data);
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.rightSlide,
                      title: 'Data Disimpan',
                      btnOkOnPress: () {
                        Navigator.pop(context);
                      },
                    ).show();
                  } else {
                    print(response.body);
                  }
                    
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
