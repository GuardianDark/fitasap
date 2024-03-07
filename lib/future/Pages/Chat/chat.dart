import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class ChatUserX extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<ChatUserX> {

  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'Hey!',
      user: ChatUser(
        id: '1',
        firstName: 'X',
        profileImage: "assets/images/1.png",
        lastName: '`Leclerc`',
      ),
      createdAt: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic examp1`e'),
      ),
      body: Container(
        child: DashChat(
          currentUser: ChatUser(
            id: '2',
            firstName: 'X',
            lastName: 'q',
          ),
          onSend: (ChatMessage m) {
            setState(() {
              messages.insert(0, m);
            });
          },
          messages: messages,
        ),
      ),
    );
  }
}