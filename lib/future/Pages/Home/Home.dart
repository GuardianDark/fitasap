import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "فیت آسا",
          style: TextStyle(
              fontSize: 20, fontFamily: 'VazirX', color: Colors.black),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Image.asset('assets/images/back.png', width: 50, height: 50,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Image.asset('assets/images/avatarshop.png', width: 50, height: 50,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(
              child: AnimatedStackCircularProgressBar(
                size: 160,
                progressStrokeWidth: 15,
                backStrokeWidth: 15,
                startAngle: 0,
                backColor: const Color(0xffD7DEE7),
                bars: [
                  AnimatedBarValue(
                    barColor: Color(0xffD74F24),
                    barValues: 55,
                    fullProgressColors: Color(0xffD74F24),
                  ),
                  AnimatedBarValue(
                    barColor: Color(0xff24D7D7),
                    barValues: 77,
                    fullProgressColors: Color(0xff24D7D7),
                  ),
                  AnimatedBarValue(
                    barColor: Colors.blue,
                    barValues: 100,
                    fullProgressColors: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Align(alignment: Alignment.topRight,child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Text("خدمات", style: TextStyle(
                fontSize: 28,
                fontFamily: 'iphone'
              ),),
            )),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFD7BA)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffA2A0FF)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE2B1FF)
                    ),
                  ),
                ),
              ],
            ),
            Align(alignment: Alignment.topRight,child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Text("برنامه امروز", style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'iphone'
              ),),
            )),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffa9a9a9),
                    blurRadius: 5,
                    offset: Offset(0, 0),
                    spreadRadius: 1,
                    blurStyle: BlurStyle.outer
                  )
                ],
                color: Colors.white38
              ),
              height: 100,
              width: MediaQuery.sizeOf(context).width - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 20),
                        child: Text("ساعت 11:23", style: TextStyle(
                          fontFamily: 'iphone',
                          fontSize: 24,
                          color: Colors.black
                        ),),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff86D3FF)
                                ),
                                child: Center(
                                  child: Text(
                                    "5 ساعت",
                                    style: TextStyle(
                                      color: Color(0xff0088f8),
                                      fontSize: 17,
                                      fontFamily: 'iphone'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xff86D3FF),
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Text(
                                    "+1",
                                    style: TextStyle(
                                      color: Color(0xff0088f8),
                                      fontFamily: 'iphone',
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xff86D3FF),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text(
                                    "+0.5",
                                    style: TextStyle(
                                        color: Color(0xff0088f8),
                                        fontFamily: 'iphone',
                                        fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets. only(top: 15, right: 20),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff31A8E8),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffe7e7e7),
                                blurStyle: BlurStyle.normal,
                                spreadRadius: 2,
                                offset: Offset(0, 1),
                                blurRadius: 4
                              )
                            ],
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, top: 15),
                        child: Text("خواب", style: TextStyle(
                          color: Color(0xff5F6367),
                          fontFamily: 'iphone',
                          fontSize: 20
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffa9a9a9),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer
                    )
                  ],
                  color: Colors.white38
              ),
              height: 100,
              width: MediaQuery.sizeOf(context).width - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 20, right: 9),
                        child: Text("ساعت 3:11", style: TextStyle(
                            fontFamily: 'iphone',
                            fontSize: 24,
                            color: Colors.black
                        ),),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xcbd74f24)
                                ),
                                child: Center(
                                  child: Text(
                                    "1 ساعت",
                                    style: TextStyle(
                                        color: Color(0xffD74F24),
                                        fontSize: 17,
                                        fontFamily: 'iphone'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xcbd74f24),
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Text(
                                    "+1",
                                    style: TextStyle(
                                        color: Color(0xffD74F24),
                                        fontFamily: 'iphone',
                                        fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xcbd74f24),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text(
                                    "+0.5",
                                    style: TextStyle(
                                        color: Color(0xffD74F24),
                                        fontFamily: 'iphone',
                                        fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets. only(top: 15, right: 20),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffD74F24),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffe7e7e7),
                                    blurStyle: BlurStyle.normal,
                                    spreadRadius: 2,
                                    offset: Offset(0, 1),
                                    blurRadius: 4
                                )
                              ],
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, top: 15),
                        child: Text("خواب", style: TextStyle(
                            color: Color(0xff5F6367),
                            fontFamily: 'iphone',
                            fontSize: 20
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffa9a9a9),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer
                    )
                  ],
                  color: Colors.white38
              ),
              height: 100,
              width: MediaQuery.sizeOf(context).width - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 20, right: 20),
                        child: Text("ساعت 06:10", style: TextStyle(
                            fontFamily: 'iphone',
                            fontSize: 24,
                            color: Colors.black
                        ),),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xcb24d7d7)
                                ),
                                child: Center(
                                  child: Text(
                                    "8 ساعت",
                                    style: TextStyle(
                                        color: Color(0xff0882c4),
                                        fontSize: 17,
                                        fontFamily: 'iphone'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xcb24d7d7),
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Text(
                                    "+4",
                                    style: TextStyle(
                                        color: Color(0xff0882c4),
                                        fontFamily: 'iphone',
                                        fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xcb24d7d7),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text(
                                    "+7",
                                    style: TextStyle(
                                        color: Color(0xff0882c4),
                                        fontFamily: 'iphone',
                                        fontSize: 17
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xcb24d7d7),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Icon(Iconsax.refresh, size: 17, color: Color(0xff0882c4),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets. only(top: 15, right: 20),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xff24D7D7),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffe7e7e7),
                                    blurStyle: BlurStyle.normal,
                                    spreadRadius: 2,
                                    offset: Offset(0, 1),
                                    blurRadius: 4
                                )
                              ],
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, top: 15),
                        child: Text("خواب", style: TextStyle(
                            color: Color(0xff5F6367),
                            fontFamily: 'iphone',
                            fontSize: 20
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
