import 'package:fitasanew/future/Pages/Quiz/Quiz.dart';
import 'package:fitasanew/future/Pages/Shop/shop.dart';
import 'package:fitasanew/future/Pages/Sign-Up/sign.dart';
import 'package:fitasanew/future/Pages/breath/breath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fitasanew/future/Pages/Chat/chat.dart';
import 'package:fitasanew/future/Pages/Home/Home.dart';
import 'package:fitasanew/future/Pages/Note/note.dart';
import 'package:fitasanew/future/Pages/Register/PageOne.dart';

import 'future/Pages/Welcome/welcome.dart';
import 'future/Pages/profile/profile.dart';

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
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.white,
          foregroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      home: MyHomePage(),
      initialRoute: '/profile',
      routes: {
        '/welcome'   :  (context) => WelcomePage(),
        '/profile'   :  (context) => Profile(),
        '/PageOne'   :  (context) => PageOne(),
        '/HomePage'  :  (context) => HomePage(),
        '/Chat'      :  (context) => ChatUserX(),
        '/Note'      :  (context) => Note(),
        '/SignUp'    :  (context) => SignUp(),
        '/Shop'      :  (context) => ShopPage(),
        '/breath'    :  (context) => Breath(),
        '/Quiz'      :  (context) => Quiz(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("OK")],
      ),
    );
  }
}
