import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _MyHomePageState();
}

Future<String?> getDataFromSharedPreferences(String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

class _MyHomePageState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/back.png',
                    width: 45,
                    height: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 5),
                  child: Image.asset(
                    'assets/images/loard.png',
                    width: 45,
                    height: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110, top: 50),
                  child: Container(
                    width: 100,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Color(0xffDFDDEA),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "3600 ریال",
                        style: TextStyle(fontSize: 20, fontFamily: 'iphone'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 50),
                  child: Image.asset(
                    'assets/images/alx.png',
                    width: 50,
                    height: 50,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/avatarpoint.png',
              width: 204,
              height: 204,
            ),
            FutureBuilder(
              future: getDataFromSharedPreferences("name"),
              builder: (context, snapshot) {
                if (snapshot.data != null) {
                  return Text(
                    "${snapshot.data}",
                    style: TextStyle(
                      fontFamily: 'iphone',
                      fontSize: 28,
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: 110,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "22",
                              style: TextStyle(
                                  color: Color(0xff1FCB65),
                                  fontFamily: 'iphone',
                                  fontSize: 23),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Text(
                              "سن",
                              style: TextStyle(
                                  color: Color(0xff7B6F72),
                                  fontFamily: 'iphone',
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: 110,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "176cm",
                              style: TextStyle(
                                  color: Color(0xff1FCB65),
                                  fontFamily: 'iphone',
                                  fontSize: 23),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Text(
                              "قد",
                              style: TextStyle(
                                  color: Color(0xff7B6F72),
                                  fontFamily: 'iphone',
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: 110,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "67kg",
                              style: TextStyle(
                                  color: Color(0xff1FCB65),
                                  fontFamily: 'iphone',
                                  fontSize: 23),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Text(
                              "وزن",
                              style: TextStyle(
                                  color: Color(0xff7B6F72),
                                  fontFamily: 'iphone',
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.sizeOf(context).width - 50,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xffE7E7E7),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130, top: 1, bottom: 1),
                    child: Text("انسولین", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'iphone',
                        fontSize: 21
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: RoundCheckBox(
                      onTap: (selected) {
                        print("select $selected");
                      },borderColor: Colors.white, ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.sizeOf(context).width - 50,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xffE7E7E7),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130, top: 1, bottom: 1),
                    child: Text("استراحت", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'iphone',
                        fontSize: 21
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: RoundCheckBox(
                      onTap: (selected) {
                        print("select $selected");
                      },borderColor: Colors.white, ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.sizeOf(context).width - 50,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xffE7E7E7),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130, top: 1, bottom: 1),
                    child: Text("آب آشامیدن", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'iphone',
                        fontSize: 21
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: RoundCheckBox(
                      onTap: (selected) {
                        print("select $selected");
                      },borderColor: Colors.white, ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
