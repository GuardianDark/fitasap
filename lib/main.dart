import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fitasanew/future/Pages/Chat/chat.dart';
import 'package:fitasanew/future/Pages/Home/Home.dart';
import 'package:fitasanew/future/Pages/Note/note.dart';
import 'package:fitasanew/future/Pages/Register/PageOne.dart';
import 'package:fitasanew/future/Pages/Register/PageThree.dart';
import 'package:fitasanew/future/Pages/Register/PageTwo.dart';

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
      initialRoute: '/Note',
      routes: {
        '/welcome'   :  (context) => PageOne(),
        '/profile'   :  (context) => Profile(),
        '/PageOne'   :  (context) => PageOne(),
        '/PageTwo'   :  (context) => PageTwo(),
        '/PageThree' :  (context) => PageThree(),
        '/HomePage'  :  (context) => PageOne(),
        '/Chat'      :  (context) => ChatUserX(),
        '/Note'      :  (context) => Note()
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
