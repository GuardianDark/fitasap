import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../Home/Home.dart';

void main() => runApp(const WelcomePage());

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'فیت آسا',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, fontFamily: 'Vazir'),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 8000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topRight,
      ),
      globalFooter: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width - 20,
            height: 70,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff45F08A))
              ),
              child: const Text(
                'بزن بریم!',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Vazir'),
              ),
              onPressed: () => _onIntroEnd(context),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
      pages: [
        PageViewModel(
          title: "فیت آسا",
          body:
              "فیت آسا یک اپلیکیشن جامع و کاربردیه که به تو برای بهتر و سالم تر زندگی کردن کمک میکنه",
          image: _buildImage('_0010.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "همراه همیشگی",
          body:
              "فیت آسا یک مربی هوشمند و به روزه که همیشه و همه جا همراهته!",
          image: _buildImage('_0028.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "دقیق و فنی",
          body:
              "فیت آسا با جزئیات زندگیت یک تحلیل خوب و دقیق راجع به عادت های روز مره ات بهت میده.",
          image: _buildImage('_0030.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "لبه فناوری",
          body: "فیت آسا روی لبه تکنولوژی حرکت میکنه و از فناوری های روز برای خدمت رسانی به شما استفاده میکنه",
          image: _buildImage('_0031.png'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 6,
            imageFlex: 6,
            safeArea: 80,
          ),
        ),
        PageViewModel(
          title: "بزن بریم!",

          bodyWidget: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("وقتشه تورو بیشتر بشناسیم!", style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildImage('_0032.png'),
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('بعدی', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Vazir')),
      next: const Icon(Icons.arrow_forward),
      done: const Text('تمام', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Vazir')),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class YouPage extends StatelessWidget {
  const YouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
