import 'dart:convert';

import 'package:baby_care/utils/color_select.dart';
import 'package:baby_care/view/bottom_navigator.dart';
import 'package:baby_care/view/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Registrasi extends StatefulWidget {
  const Registrasi({super.key});

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }

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
                  'Registrasi',
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
                              controller: nameController,
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
                              controller: phoneNumberController,
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
                              controller: passwordController,
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
                        Text('Confirm password',
                            style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.shade200,
                                border: Border.all(color: Colors.pinkAccent)),
                            child: TextField(
                              controller: passwordConfirmationController,
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
                              onPressed: () async {
                                final response = await http.post(
                                  Uri.parse("http://localhost:8000/api/auth/register"),
                                  body: json.encode(<String, String>{
                                    "name": nameController.text,
                                    "phone_number": phoneNumberController.text,
                                    "password": passwordController.text,
                                    "password_confirmation": passwordConfirmationController.text,
                                  }),
                                  headers: <String, String> {
                                    "Content-Type": 'application/json; charset=UTF-8',
                                  }
                                );
                              if(response.statusCode == 200) {  
                                Navigator.pop(context);
                              } else {
                              print(response.body);
                            }
                              },
                              child: Text('Register',
                                  style: TextStyle(fontSize: 16))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun? '),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Login'))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
