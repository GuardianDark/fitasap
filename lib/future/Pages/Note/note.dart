import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
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
          Container(
            width: 300,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xffEDECF4)),
                color: Colors.white),
            child: Column(
              children: [
                Stack(
                  children: [Padding(
                    padding: const EdgeInsets.only(right: 20, top: 15),
                    child: Align(alignment: Alignment.topRight, child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                    )),
                  ),
                    Align(alignment: Alignment.bottomRight,child: Padding(
                      padding: const EdgeInsets.only(right: 47, top: 10),
                      child: Text("دریافت کس مادرت", style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                      ),),
                    ))
                  ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
