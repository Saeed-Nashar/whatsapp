import 'package:flutter/material.dart';
import 'package:whatsapp/page/CameraPage.dart';
import 'package:whatsapp/page/chatPage.dart';
import 'package:whatsapp/page/statusPage.dart';
import 'package:whatsapp/screens/MySetting.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text("whats app web"),
                value: "Whats app web",
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
                value: "Starred messages",
              ),
              PopupMenuItem(
                child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>MySetting()));
                    },

                    child: Text("Setting")),
                value: "Setting",
              ),
            ];
          }),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          CameraPage(),
          chatPage(),
          StatusPage(),
          Text("calls"),
        ],
      ),
    );
  }
}
