import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("MyApp"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: ListView(
            children: [
              Container(
                height: 50,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                  alignment: Alignment.center,
                  child: Text("BERITA TERBARU"),
                  ),
                  Container(
                  alignment: Alignment.center,
                  child: Text("SOUSENKYO"),
                  )
                ],
              ),
              ),
              
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Container(
                      child: Image(image: AssetImage("assets/shn.jpg")),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text("Si Kapten", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 50,
                      alignment: Alignment.centerLeft,
                      color: Colors.lightGreen,
                      child: Text("Graduate", style:TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      child: Image(image: AssetImage("assets/flo.jpg")),
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Siapa yang mau ikut ke dunia Flora????"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8,left: 5, bottom: 8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      child: Text("Jakarta, 4 April 2005"),
                  ),
                  Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      child: Image(image: AssetImage("assets/adl.jpg")),
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Bagai kucing yang kalem"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8,left: 5, bottom: 8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      child: Text("Jakarta, 14 Juli 2006"),
                  ),
                  Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      child: Image(image: AssetImage("assets/chk.jpg")),
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Dengan gummy smile ku"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8,left: 5, bottom: 8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      child: Text("Jakarta, 22 September 2002"),
                  ),
              ]
            ), 
          ),
         )
      );
  }
}
