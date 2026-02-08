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
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(child: Align(
            alignment: Alignment.bottomLeft,
            child: Card(
              elevation: 26,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26)
              ),
              child: Container(
                height: 56,
                padding: EdgeInsets.all(10),
                child: Row(

                  children: [

                    CircleAvatar(
                      radius: 20,
                    ),

                    SizedBox(width: 20,),

                    Expanded(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Enter Text",
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),

                    SizedBox(width: 20,),

                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 20,
                      ),
                    )

                  ],
                ),
              )
            )
          ))
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