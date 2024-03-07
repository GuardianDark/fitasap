import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE6EBE7),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: Image.asset('assets/images/onarrow.png'),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Image.asset('assets/images/back.png'),
        ),
      ),
      backgroundColor: Color(0xffE6EBE7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width - 40,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30, top: 10),
                          child: Text(
                            "محل ورزش کردنت کجاست؟",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'iphone'),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 20),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff60DA8A)),
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Icon(Iconsax.home_14,
                                        color: Colors.white,
                                        weight: 100,
                                        size: 40),
                                  ),
                                  Text(
                                    "خانه",
                                    style: TextStyle(
                                        fontFamily: 'iphone',
                                        fontSize: 20,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 20),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff60DA8A)),
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Icon(Iconsax.tree,
                                        color: Colors.white,
                                        weight: 100,
                                        size: 40),
                                  ),
                                  Text(
                                    "طبیعت",
                                    style: TextStyle(
                                        fontFamily: 'iphone',
                                        fontSize: 20,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 20),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff60DA8A)),
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Icon(Iconsax.building_3,
                                        color: Colors.white,
                                        weight: 100,
                                        size: 40),
                                  ),
                                  Text(
                                    "باشگاه",
                                    style: TextStyle(
                                        fontFamily: 'iphone',
                                        fontSize: 20,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.sizeOf(context).width - 40,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.topRight,child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 30),
                          child: Text("علت ورزش کردنت چیه؟", style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'iphone'
                          ),),
                        )),
                        SizedBox(height: 20,),
                        Container(
                          width: MediaQuery.sizeOf(context).width - 110,
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
                                child: Text("کاهش وزن", style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'iphone',
                                  fontSize: 21
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: RoundCheckBox(
                                  onTap: (selected) {},borderColor: Colors.white, ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.sizeOf(context).width - 110,
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
                                child: Text("عضله سازی ", style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'iphone',
                                    fontSize: 21
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: RoundCheckBox(
                                  onTap: (selected) {},borderColor: Colors.white, ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.sizeOf(context).width - 110,
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
                                child: Text("حفظ سلامتی", style: TextStyle(
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
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.sizeOf(context).width - 40,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.topRight,child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 30),
                          child: Text("سطح مهارتت چقدره؟", style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'iphone',
                          ),),
                        )),
                        SizedBox(height: 20,),
                        CupertinoRadioChoice(
                            choices: {'male' : 'حرفه ای', 'female' : 'متوسط', 'other': 'مبتدی'},
                            onChange: (selectedGender) {},
                            initialKeyValue: 'male',selectedColor: Color(0xff60DA8A),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CupertinoRadioChoice extends StatefulWidget {
  /// CupertinoRadioChoice displays a radio choice widget with cupertino format
  CupertinoRadioChoice(
      {required this.choices,
        required this.onChange,
        required this.initialKeyValue,
        this.selectedColor = CupertinoColors.systemBlue,
        this.notSelectedColor = CupertinoColors.inactiveGray,
        this.enabled = true});

  /// Function is called if the user selects another choice
  final Function onChange;

  /// Defines which choice shall be selected initally by key
  final dynamic initialKeyValue;

  /// Contains a map which defines which choices shall be displayed (key => value).
  /// Values are the values displyed in the choices
  final Map<dynamic, String> choices;

  /// The color of the selected radio choice
  final Color selectedColor;

  /// The color of the not selected radio choice(s)
  final Color notSelectedColor;

  /// Defines if the widget shall be enabled (clickable) or not
  final bool enabled;

  @override
  _CupertinoRadioChoiceState createState() => new _CupertinoRadioChoiceState();
}

/// State of the widget
class _CupertinoRadioChoiceState extends State<CupertinoRadioChoice> {
  dynamic _selectedKey;

  @override
  void initState() {
    super.initState();
    if (widget.choices.keys.contains(widget.initialKeyValue))
      _selectedKey = widget.initialKeyValue;
    else
      _selectedKey = widget.choices.keys.first;
  }

  Widget buildSelectionButton(String key, String value,
      {bool selected = false}) {
    return Container(
        child: CupertinoButton(
            disabledColor:
            selected ? widget.selectedColor : widget.notSelectedColor,
            color: selected ? widget.selectedColor : widget.notSelectedColor,
            padding: const EdgeInsets.all(10),
            child: Text(value, style: TextStyle(fontFamily: 'iphone', fontSize: 25),),
            onPressed: !widget.enabled || selected
                ? null
                : () {
              setState(() {
                _selectedKey = key;
              });

              widget.onChange(_selectedKey);
            }));
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttonList = [];
    for (var key in widget.choices.keys) {
      buttonList.add(buildSelectionButton(key, widget.choices[key]!,
          selected: _selectedKey == key));
    }
    return Wrap(
      children: buttonList,
      spacing: 10.0,
      runSpacing: 5.0,
    );
  }
}
