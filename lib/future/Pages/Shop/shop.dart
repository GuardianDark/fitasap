import 'package:fitasanew/future/Pages/Register/PageOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:iconsax/iconsax.dart';

import '../../Network/gitCall/call.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  var map = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "فروشگاه",
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
          children:
          [
            SizedBox(height: 40,),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageOne()),
                  );
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width - 30,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffE2E9FF)
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/safebox.png',),
                      Expanded(
                        child: Column(
                          children: [
                            Align(alignment: Alignment.topRight,child: Padding(
                              padding: const EdgeInsets.only(left: 40, top: 20, right: 20),
                              child: Text("اشتراک ویژه", style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'VazirX',
                                fontSize: 15
                              ),),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, right: 0),
                              child: Text("با خرید اشتراک ویژه مشترک دائمی شوید", style: TextStyle(
                                fontFamily: "Vazir",
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: List.generate(map.length > 0 ? map.length : 10, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder(future: getData(), builder: (context, snapshot) {
                    if(map.length > 0){
                      return shop(index);
                    }else{
                      return ShopSceleton();
                    }
                },),
              )),
            ),
          ],
        ),
      ),
    );
  }
  Widget shop(index){
    String title = map[index]['title'];
    String price = map[index]['price'];
    return GestureDetector(
      onTap: () {
        showToast(
          '$title را خرید کردید ',
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
      },
      child: Container(
        height: 120,
        width: MediaQuery.sizeOf(context).width - 50,
        decoration: BoxDecoration(
            color: Color(0xffDDFFEB),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffa8eec2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, left: 7, right: 7, bottom: 2),
                      child: Text("$title", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'iphone',
                          fontSize: 20
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffa8eec2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 2, right: 7, left: 7),
                        child: Text("$price", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'iphone',
                            fontSize: 15
                        ),),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 60),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Color(0xffDDFFEB),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Image.asset('assets/images/coins.webp', width: 100, height: 90,),
                      ),
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget ShopSceleton(){

    return Container(
      height: 120,
      width: MediaQuery.sizeOf(context).width - 50,
      decoration: BoxDecoration(
          color: Color(0xffDDFFEB),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffa8eec2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2, left: 7, right: 7, bottom: 2),
                    child: Text("000", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'iphone',
                        fontSize: 20
                    ),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffa8eec2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2, right: 7, left: 7),
                      child: Text("000", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'iphone',
                          fontSize: 15
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 60),
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xffDDFFEB),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Image.asset('assets/images/coins.webp', width: 100, height: 90,),
                    ),
                  ),
                ),
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ],
      ),
    );
  }
  Future<dynamic> getData() async {
    Network network = Network();
    var data = await network.getPost(
        'https://raw.githubusercontent.com/GuardianDark/fitasap/master/shop.json');
    setState(() {
      map = data;
    });
    return map;
  }
}
