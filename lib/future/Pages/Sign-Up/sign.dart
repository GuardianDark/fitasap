import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home/Home.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});


  Future<void> saveDataToSharedPreferences(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
  Future<String?> getDataFromSharedPreferences(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _1 = TextEditingController();
    TextEditingController _2 = TextEditingController();
    TextEditingController _3 = TextEditingController();
    TextEditingController _4 = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Center(
                  child: Image.asset(
                'assets/images/vectorback.png',
                height: 300,
                width: 250,
              )),
              Center(
                child: Image.asset(
                  "assets/images/_0039.png",
                  height: 300,
                  width: 300,
                ),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Text(
              "نمایه کاربری خودت رو تکمیل کن",
              style: TextStyle(
                  fontFamily: 'VazirX',
                  fontSize: 25,
                  color: Colors.black,
                  letterSpacing: -1),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "این به ما کمک میکنه که تورو بهتر بشناسیم",
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Colors.black,
                  letterSpacing: -1),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffE1E1E1), borderRadius: BorderRadius.circular(9)),
                height: 50,
                width: MediaQuery.sizeOf(context).width - 50,
                child: TextFormField(
                  controller: _1,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(20),
                  ],
                   keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontFamily: 'Vazir'
                  ),
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Icon(Iconsax.user_octagon4),
                    ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            9), // Adjust the radius as needed
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 9, top: 11, right: 15),
                      hintText: "نام"),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffE1E1E1), borderRadius: BorderRadius.circular(9)),
                height: 50,
                width: MediaQuery.sizeOf(context).width - 50,
                child: TextFormField(
                  controller: _2,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(3),
                  ],
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontFamily: 'Vazir'
                  ),
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Icon(Iconsax.calendar_edit),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            9), // Adjust the radius as needed
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 9, right: 15),
                      hintText: "سن"),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE1E1E1), borderRadius: BorderRadius.circular(9)),
                  height: 50,
                  width: MediaQuery.sizeOf(context).width - 125,
                  child: TextFormField(
                    controller: _3,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                    ],
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        fontFamily: 'Vazir'
                    ),
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Icon(Iconsax.weight),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              9), // Adjust the radius as needed
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 9, right: 15),
                        hintText: "وزن"),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      "KG",
                      style: TextStyle(
                          fontFamily: 'Varta',
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff45F08A)
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE1E1E1), borderRadius: BorderRadius.circular(9)),
                  height: 50,
                  width: MediaQuery.sizeOf(context).width - 125,
                  child: TextFormField(
                    controller: _4,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                    ],
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        fontFamily: 'Vazir'
                    ),
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Icon(Iconsax.ruler),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              9), // Adjust the radius as needed
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 9, right: 15),
                        hintText: "قد"),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      "CM",
                      style: TextStyle(
                        fontFamily: 'Varta',
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff45F08A)
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () async {
                await saveDataToSharedPreferences("name", _1.text);
                await saveDataToSharedPreferences("age", _2.text);
                await saveDataToSharedPreferences("width", _3.text);
                await saveDataToSharedPreferences("height", _4.text);
                if(getDataFromSharedPreferences("name") != null){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }else{
                  showToast(
                    'به مشکل برخورد',
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
                }
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width - 100,
                height: 55,
                child: Center(
                  child: Text(
                    "بعدی",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'VazirX',
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 90,
                      blurStyle: BlurStyle.inner
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff45F08A)
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
