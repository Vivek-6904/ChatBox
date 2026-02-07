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
        backgroundColor: Colors.black,
        elevation: 0,

        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
            ),
            SizedBox(width: 8,),
            Text("Name", style: TextStyle(color: Colors.grey),),

            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.more_vert,color: Colors.grey,),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }
}