import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class otpScreen extends StatefulWidget {
  final String countryCode;
  final String Number;

  const otpScreen({Key key, this.countryCode, this.Number}) : super(key: key);

  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "verify ${widget.countryCode} ${widget.Number}",
          style: TextStyle(fontSize: 17, color: Colors.teal[500]),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
              TextSpan(
                  text: "we have sent an SMS with a code to",
                  style: TextStyle(color: Colors.black,fontSize: 14.5,),),

                  TextSpan(
                      text: widget.countryCode+" "+widget.Number,
                      style: TextStyle(color: Colors.black,fontSize: 14.5,fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "Wrong number?",
                    style: TextStyle(color: Colors.cyan[400],fontSize: 14.5,),),

                ])),
            SizedBox(height: 5,),
            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 30,
              style: TextStyle(
                  fontSize: 17
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(height: 20,),
            Text("Enter 6-digit code",style: TextStyle(
                fontSize: 14.5,
              color: Colors.grey[600]
            ),),
            SizedBox(height: 30,),
             BottomBottn("Resend SMS",Icons.message),
            SizedBox(height: 12,),
            Divider(
              thickness: 1.5,
            ),
            BottomBottn("Call me", Icons.call),
          ],
        ),
      ),
    );
  }

  Widget BottomBottn(String text,IconData icon){
      return  Row(
        children: [
          Icon(
            icon,
            color: Colors.teal,
            size: 24,
          ),
          SizedBox(
            width: 25,
          ),
          Text(text,style:TextStyle(color: Colors.teal,fontSize: 14.5),),
        ],
      );


  }
}
