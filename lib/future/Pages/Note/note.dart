import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:fitasanew/future/Network/gitCall/call.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final dio = Dio();

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
  }

  var map = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Text(
              "اعلانات",
              style: TextStyle(
                  color: Color(0xff432C81), fontSize: 25, fontFamily: 'VazirX'),
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: Image.asset('assets/images/back.png'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (map.length > 0) {
                    return mapList(index);
                  } else {
                    return sceleton();
                  }
                },
              );
            },
            itemCount: map.length > 0 ? map.length : 10,
          ))
        ],
      ),
    );
  }

  Widget sceleton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xffEDECF4)),
            color: Colors.white),
        child: Column(
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 15),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    )),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 47, top: 10),
                    child: SizedBox(child: CircularProgressIndicator(), width: 20, height: 20,),
                  ))
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(child: CircularProgressIndicator(), width: 30, height: 30,)),
            ),
          ],
        ),
      ),
    );
  }

  Widget mapList(int index) {
    Color? colorX = Colors.red!;
    String title = map[index]['title'];
    String color = map[index]['color'];
    String text = map[index]['text'];
    switch (color) {
      case 'red':
        colorX = Colors.red;
      case 'green':
        colorX = Colors.green;
      case 'blue':
        colorX = Colors.blue;
      case 'purple':
        colorX = Colors.purple;
      case 'pink':
        colorX = Colors.pink;
      default:
        colorX = Colors.orange;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffDDFFEB),
              Color(0xffF0D2FE),
            ],
          ),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 15),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: colorX),
                    )),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 47, top: 10),
                    child: Text("$title",
                        style: TextStyle(
                          fontFamily: 'VazirX',
                          fontSize: 20,
                        )),
                  ))
            ]),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 11, right: 5, left: 8, bottom: 9),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("$text",
                        style: TextStyle(
                            fontFamily: 'Vazir',
                            fontSize: 15,
                            fontWeight: FontWeight.w600))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> getData() async {
    Network network = Network();
    var data = await network.getPost(
        'https://raw.githubusercontent.com/GuardianDark/fitasap/master/notif.json');
    setState(() {
      map = data;
    });
    return map;
  }
}
