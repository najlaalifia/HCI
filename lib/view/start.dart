import 'dart:async';
import 'dart:convert';

import 'package:baby_care/view/bottom_navigator.dart';
import 'package:baby_care/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  Timer? _timer;

  int _start = 3;

  Future<void> getUser() async {
    final box = GetStorage();
    final token = box.read("token");
    final response = await http.get(
      Uri.parse("http://localhost:8000/api/auth/get-user"),
      headers: <String, String> {
        "Content-Type": 'application/json; charset=UTF-8',
        "Authorization": "Bearer $token"
      },
    );
    if(response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      final box = GetStorage();
      box.write("user", data['user']);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainNavigator(),
        ));
    } else {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ));
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/start.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
