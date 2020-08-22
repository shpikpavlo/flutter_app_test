import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFlutterAppState();
  }
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  Color colorBackground = Colors.lightBlueAccent;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: colorBackground,
          appBar: AppBar(
            title:  Center(
                  child: Text(
                    "Flutter App",
                    style: TextStyle(letterSpacing: 10.0)),
               ),
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              setState(() {
                   colorBackground = Color.fromARGB(random.nextInt(255) + 1,
                      random.nextInt(255) + 1, random.nextInt(255) + 1, 1);
              });
            },
            child: Center(
              child:Container(
                  child: Text("Hey there",style:TextStyle(fontSize: 25, color:Colors.white),),
                    height: 170,
                    width: 170,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                    image:DecorationImage
                      (
                      image: Image.network(
                      'https://wallbox.ru/wallpapers/preview/201647/fon-doski-derevotekstura-cvet.jpg').image,
                      fit: BoxFit.cover,),
                      shape: BoxShape.circle,

    )             ),
              )
            ),
          ),
        );
  }


}
