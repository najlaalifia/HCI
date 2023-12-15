import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:baby_care/utils/color_select.dart';
import 'package:baby_care/view/bottom_navigator.dart';
import 'package:baby_care/view/home.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
              Container(
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
                  'Edit Profile',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pink.shade300,
                    border: Border.all(color: Colors.pinkAccent)),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama', style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.shade200,
                                border: Border.all(color: Colors.pinkAccent)),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('No. Telp', style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.shade200,
                                border: Border.all(color: Colors.pinkAccent)),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password', style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.shade200,
                                border: Border.all(color: Colors.pinkAccent)),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Kembali',
                                  style: TextStyle(fontSize: 16))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                              onPressed: () {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.success,
                                  animType: AnimType.rightSlide,
                                  title: 'Berhasil',
                                  btnOkOnPress: () {
                                    Navigator.pop(context);
                                  },
                                ).show();
                              },
                              child: Text('Kirim',
                                  style: TextStyle(fontSize: 16))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
