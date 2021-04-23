import 'package:budgit/components/custom_text_button.dart';
import 'package:budgit/components/number_tales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budgit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/user_profile.png"),
                      ),
                    ),
                  ),
                  Text(
                    "N5,000 left",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontFamily: "Caros",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox.shrink()
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
              Center(
                child: Text(
                  "\$0",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: "Caros",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Add a memo",
                  style: TextStyle(
                      fontFamily: "Caros",
                      color: Color(0xFFCCCCCC),
                      fontSize: 16.0),
                ),
              ),
              NumberTales(["1", "2", "3"]),
              NumberTales(["4", "5", "6"]),
              NumberTales(["7", "8", "9"]),
              NumberTales([".", "0", "<"]),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextButton(
                        title: "Debit",
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: CustomTextButton(
                        title: "Credit",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xFF5FF9CB), shape: BoxShape.circle),
                        child: Center(
                          child: SvgPicture.asset("assets/images/wallet.svg"),
                        ),
                      ),
                      SvgPicture.asset("assets/images/document.svg"),
                      SvgPicture.asset("assets/images/note.svg"),
                      SvgPicture.asset("assets/images/calendar.svg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
