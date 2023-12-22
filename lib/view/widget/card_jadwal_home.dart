import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../../utils/color_select.dart';

class CardJadwalHome extends StatefulWidget {
  final String tanggal;
  final String form1, form2, form3;
  final String jam1, jam2, jam3;

  const CardJadwalHome(
      {super.key,
      required this.tanggal,
      this.form1 = '',
      this.form2 = '',
      this.form3 = '',
      this.jam1 = '',
      this.jam2 = '',
      this.jam3 = ''});

  @override
  State<CardJadwalHome> createState() => _CardJadwalHomeState();
}

class _CardJadwalHomeState extends State<CardJadwalHome> {
  @override
  Widget build(BuildContext context) {
    bool isClick1 = false;
    bool isClick2 = false;
    bool isClick3 = false;
    return Stack(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorSelect.pinkmuda),
          margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ColorSelect.pinktua,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    widget.tanggal,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 30,
                              width: 30,
                              color: ColorSelect.pinktua,
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              widget.form1,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              widget.jam1,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 30,
                            width: 30,
                            color: ColorSelect.pinktua,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              widget.form2,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              widget.jam2,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 30,
                            width: 30,
                            color: ColorSelect.pinktua,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              widget.form3,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              widget.jam3,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
