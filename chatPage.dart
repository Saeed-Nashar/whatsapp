import 'package:flutter/material.dart';
import 'package:whatsapp/CustomCard/customCard.dart';
import 'package:whatsapp/model/chatModel.dart';
import 'package:whatsapp/screens/selectcontact.dart';
class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  List <chatModel> chats=[
     chatModel(
        name:"saeed",
        icon:"person.svg",
      isGroup:false,
      time:"4:00",
      currentMessage:"hi",
        ),
    chatModel(
      name:"yousef",
      icon:"person.svg",
      isGroup:false,
      time:"16:00",
      currentMessage:"How are you",
    ),
    chatModel(
      name:"kareem",
      icon:"groups.svg",
      isGroup:true,
      time:"6:00",
      currentMessage:"what are you doing",
    ),
    chatModel(
      name:"samar",
      icon:"person.svg",
      isGroup:false,
      time:"2:00",
      currentMessage:"Hi",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (builder)=>selectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder:(context,index)=>customCard(
          chatmodel:chats[index],
        ),
      ),
    );
  }
}
