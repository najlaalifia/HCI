import 'dart:convert';

import 'package:baby_care/view/bottom_navigator.dart';
import 'package:baby_care/view/home.dart';
import 'package:baby_care/view/registrasi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    phoneNumberController.dispose();
    passwordController.dispose();
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
                height: 50,
              ),
              Image.asset(
                'assets/logo.png',
                height: 150,
                width: 150,
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
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nomor Handphone', style: TextStyle(fontSize: 16)),
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
                      height: 30,
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () async {
                            final response = await http.post(
                              Uri.parse("http://localhost:8000/api/auth/login"),
                              body: json.encode(<String, String>{
                                "phone_number": phoneNumberController.text,
                                "password": passwordController.text,
                              }),
                              headers: <String, String> {
                                "Content-Type": 'application/json; charset=UTF-8',
                              }
                            );
                            if(response.statusCode == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainNavigator(),
                                ));
                            } else {
                              print("GAGAL");
                            }
                          },
                          child: Text('Login', style: TextStyle(fontSize: 16))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun? '),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registrasi(),
                            ));
                      },
                      child: Text('Register'))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
