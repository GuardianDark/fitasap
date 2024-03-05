import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Text(
            "سلام, خوش آمدید",
            style: TextStyle(
                color: Colors.black, fontFamily: 'Vazir', fontSize: 21),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 30),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        leading: Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Center(
            child: CircleAvatar(
              foregroundColor: Colors.red,
              child: Image.asset('assets/images/Avatar.png'),
              radius: 50,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 3,
                          color: Colors.black,
                          blurStyle: BlurStyle.solid
                        )
                      ],
                        shape: BoxShape.circle, color: Color(0xff00cc79)),
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/images/g.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 3,
                              color: Colors.black,
                              blurStyle: BlurStyle.solid
                          )
                        ],
                        shape: BoxShape.circle, color: Color(0xff00cc79)),
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/images/g.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 3,
                              color: Colors.black,
                              blurStyle: BlurStyle.solid
                          )
                        ],
                        shape: BoxShape.circle, color: Color(0xff00cc79)),
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/images/g.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 3,
                              color: Colors.black,
                              blurStyle: BlurStyle.solid
                          )
                        ],
                        shape: BoxShape.circle, color: Color(0xff00cc79)),
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/images/g.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 40),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text("تمارین", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Vazir'
                ),)),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                                blurRadius: 3,
                                color: Colors.black,
                                blurStyle: BlurStyle.solid
                            )
                          ],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purpleAccent
                      ),
                      height: 100,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                                blurRadius: 3,
                                color: Colors.black,
                                blurStyle: BlurStyle.solid
                            )
                          ],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.pinkAccent
                      ),
                      height: 100,
                      width: 200,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 3,
                              color: Colors.black,
                              blurStyle: BlurStyle.solid
                          )
                        ],
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrangeAccent
                    ),
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 3,
                              color: Colors.black,
                              blurStyle: BlurStyle.solid
                          )
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue
                    ),
                    height: 100,
                    width: 200,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
