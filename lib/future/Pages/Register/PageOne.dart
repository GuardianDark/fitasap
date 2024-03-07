import 'package:fitasanew/future/Pages/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _HomePageState();
}

class _HomePageState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Image.asset('assets/images/back.png'),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text(
                  "هدف شما چیست؟",
                  style: TextStyle(
                      fontFamily: 'iphone',
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "من به شما کمک میکنم تا بهترین ",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'iphone',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7B6F72)),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "برنامه رو داشته باشید",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'iphone',
                      color: Color(0xff7B6F72)),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width - 100,
                  height: MediaQuery.sizeOf(context).height - 360,
                  decoration: BoxDecoration(
                    color: Color(0xff1FCB65),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff818181),
                        blurRadius: 10,
                        offset: Offset(1, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 27,
                      ),
                      Image.asset(
                        "assets/images/Vectorpattern.png",
                        width: 230,
                        height: 230,
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        "فرم دهی بدن",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'iphone'),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 100,
                        height: 2,
                        color: Colors.white38,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "من یک مقداری چربی اضافه دارم و نیاز دارم که",
                        style: TextStyle(
                            fontFamily: 'iphone',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 04,
                      ),
                      Text(
                        " اون رو کاهش بدم و در عوض عضله سازی کنم",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'iphone',
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    showToast(
                      'اشتراک ویژه فعال شد',
                      textStyle: TextStyle(
                          fontFamily: 'iphone',
                          color: Colors.white,
                          fontSize: 20),
                      context: context,
                      animation: StyledToastAnimation.scale,
                      reverseAnimation: StyledToastAnimation.fade,
                      position: StyledToastPosition.bottom,
                      animDuration: Duration(seconds: 1),
                      duration: Duration(seconds: 5),
                      curve: Curves.elasticOut,
                      reverseCurve: Curves.linear,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width - 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff45F08A),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff818181),
                              blurRadius: 9,
                              offset: Offset(0.3, 2.3),
                            ),
                          ],
                        ),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, top: 3, bottom: 3),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      Text(
                        "تایید",
                        style: TextStyle(
                            fontFamily: 'iphone',
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        ));
  }
}
