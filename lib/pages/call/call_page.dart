import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          decoration:  BoxDecoration(
              image:  DecorationImage(
                image: AssetImage("assets/images/call_senter.png"),
                fit: BoxFit.contain,
              )

      ,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            SizedBox(height: 100),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("Assalomu alaykum! \n"
                  "Bizning restuarantimizga \n"
                  "xush kelipsiz\n"
                  "pastdagi nomerga qo'ng'iroq \n"
                  "qib siz o'zingizga yoqqan taomni \n"
                  "buyirtma qlishingiz mumkin\n"
                  "Biznig xizmatlarni\n"
                  "maqqullaganingiz uchun"
                  "sizdan judaham minnadormiz!",style: TextStyle(fontSize: 20,color: Colors.black)),
            ),
            SizedBox(height: 50),
            Text("+998990665408",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
            buildButton(),
          ],
        ),
      ),
    );
  }

  Widget buildButton(){
    final number = "+998990665408";
    return ElevatedButton(onPressed: () async {
      launch("tel://$number");
      await FlutterPhoneDirectCaller.callNumber(number);
    }, child: Text("Call"),);
  }
}
// gradient: LinearGradient(
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight,
//     colors: [Colors.teal,Colors.deepOrangeAccent,Colors.greenAccent,Colors.amberAccent,Colors.purpleAccent,Colors.lightGreen]
// )