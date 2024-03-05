import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  List<Map<String, dynamic>> map = [
    {
      "title": "قرص ها",
      "color": "red",
      "text": "قرص ها رو بخور"
    },
    {
      "title": "قرص ها",
      "color": "green",
      "text": "قرص ها رو بخور"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "یاداشت ها",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Vazir",
                  color: Color(0xff432C81),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width - 110,
            height: 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return mapList(index);
            }, itemCount: map.length,),
          )
        ],
      ),
    );
  }

  Widget mapList(int index){
    Color? colorX = Colors.red!;
    String title = map[index]['title'];
    String color = map[index]['color'];
    String text = map[index]['text'];
    switch (color) {
      case 'red':
        colorX = Colors.red;
      case 'green':
        colorX = Colors.green;
      case 'blue':
        colorX = Colors.blue;
      case 'purple':
        colorX = Colors.purple;
      case 'pink':
        colorX = Colors.pink;
      default:
        colorX = Colors.orange;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xffb4b4b4)),
            color: Colors.white),
        child: Column(
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 15),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: colorX),
                    )),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 47, top: 10),
                    child: Text(
                      "$title",
                      style: TextStyle(
                          fontFamily: 'Vazir',
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ))
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("$text",
                      style: TextStyle(
                          fontFamily: 'Vazir',
                          fontSize: 13,
                          fontWeight: FontWeight.w600))),
            )
          ],
        ),
      ),
    );

  }
}
