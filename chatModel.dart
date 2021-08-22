import 'package:flutter/cupertino.dart';

class chatModel{
@required String name;
 @required String icon;
  @required bool isGroup;
  @required String time;
  @required String currentMessage;
  @required  String status;
    @required  bool select =false;
chatModel({this.name,this.icon,this.isGroup,this.time,this.currentMessage,this.status,this.select=false});
}