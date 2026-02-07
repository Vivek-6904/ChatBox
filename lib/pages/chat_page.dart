import 'package:flutter/material.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  PreferredSizeWidget buildAppBar(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(58),
      child: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,

        title: Row(
          children: [
            Text("Name"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
    );
  }
}