import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  PreferredSizeWidget buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(58),
      child: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,

        title: Row(
          children: [
            const Text("Chat", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)),

            const SizedBox(width: 20,),

            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 10)
                  ),
                ),
              ),
            )
          ],
        ),
        actions: const[
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_vert, color: Colors.white,),
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => ChatPage(),),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  height: 55,
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 20,
                      ),

                      SizedBox(width: 8,),

                      Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("name", style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text("time", style: TextStyle(fontSize: 13, color: Colors.grey),)

                              ],
                            ),
                          )
                      ),

                      Expanded(
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Time",style: TextStyle(fontSize: 8, color: Colors.grey),),
                                CircleAvatar(
                                  radius: 8,
                                ),
                              ],
                            )
                        ),
                      )

                    ],
                  )
              ),
            ),
          ),
        ),

      ],
    );
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

}