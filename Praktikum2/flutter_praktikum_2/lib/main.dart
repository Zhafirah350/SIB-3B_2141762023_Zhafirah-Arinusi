// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//TEXT WIDGET//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:  Text ("This is Text Widget",)
//     );
//   }
// }

// IMAGE WIDGET //
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),),
//     );
//   }
// }

//MATERIAL DESIGN DAN IOS CUPERTINO//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Container(
//         margin: EdgeInsets.only(top: 30),
//         color:Colors.white,
//         child: Column(
//           children: [
//             AppBar(title: Text('Contoh Cupertino')),
//             CupertinoButton(
//               child: Text("Contoh Button"), 
//               onPressed: () {}
//               ),
//               CupertinoActivityIndicator(),
//           ],
//         ),
//       )
//     );
//   }
// }

//BUTTON//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//           },
//           child: Icon(Icons.thumb_up),
//           backgroundColor: Colors.pink,
//         ),
//       )
//     );
//   }
// }

//SCAFFOLD//
// class MainApp extends StatelessWidget {
//   int _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Sample Code'),
//         ),
//         body: Center(
//           child: Text('You have pressed the button $_count times.'),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: Container(
//             height: 50.0,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => 0,
//           tooltip: 'Increment Counter',
//           child: Icon(Icons.add),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       ),
//     );
//   }
// }

//DIALOG//
// class MyApp extends StatelessWidget {
//   int _count = 0;
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(

//       home: Scaffold(
//         body: MyLayout(),
//       ),
//     );
//   }
// }

// class MyLayout extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(
//         child: Text('Show Alert'),
//         onPressed: (){
//           showAlertDialog(context);
//         },
//       ),
//     );
//   }
// }

// showAlertDialog(BuildContext context){

//   //set up the button
//   Widget okButton = TextButton(
//     child: Text("OK"),
//     onPressed:(){ },
//   );

//   //set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("My title"),
//     content: Text("This is my message."),
//     actions: [
//       okButton,
//     ],
//   );

//   //show the dialog
//   showDialog(
//     context: context, 
//     builder: (BuildContext context){
//       return alert;
//     },
//   );
// }

//INPUT DAN SELECTION WIDGET//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("contoh TextField")
//         ),
//         body: TextField(
//           obscureText: false,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Nama',
//           ),
//         ),
//       ),
//     );
//   }
// }

//DATE & TIME PICKERS//
// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Contoh Date Picker',
//       home: MyHomePage(title: 'Contoh Date Picker'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget{
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // variabel mengambil tanggal
//   DateTime selectedDate = DateTime.now();

//   // Initial SelectDate Flutter
//   Future<Null> _selectDate(BuildContext context) async {
//     // Initial DateTime Final Picked
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2015, 8),
//       lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate)
//       setState(() {
//         selectedDate = picked;
//       });
//   }

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text("${selectedDate.toLocal()}".split(' ')[0]),
//             SizedBox(height: 20.0,),
//             ElevatedButton(
//               onPressed: () => {
//                 _selectDate(context),
//                 print(selectedDate.day + selectedDate.month + selectedDate.year)
//               },
//               child: Text('Pilih Tanggal'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//CONTAINER CHILD//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Button")),
//         body: Container(
//           child: ElevatedButton(
//             onPressed: (){},
//             child: Text(
//               "Button",
//               style: TextStyle(fontSize: 20),
//             ),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.red[900],
//               foregroundColor: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//CONTAINER ALIGNMENT//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Alignment")),
//         body: Container(
//           alignment: Alignment.bottomCenter,
//           child: Text(
//             'Semangat Belajar',
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           )
//         ),
//       ),
//     );
//   }
// }

//CONTAINER COLOR//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Button")),
//         body: Container(
//           margin: EdgeInsets.all(50),
//           height: 200,
//           width: 200,
//           alignment: Alignment.center,
//           color: Colors.amber[900],
//           child: Text(
//             'Semangat Belajar',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

//CONTAINER HEIGHT N WIDTH//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Height dan Width")),
//         body: Container(
//           margin: EdgeInsets.all(50),
//           height: 200,
//           width: 200,
//           alignment: Alignment.center,
//           color: Colors.blueGrey,
//           child: Text(
//             'Semangat Belajar',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

//CONTAINER MARGIN//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Margin")),
//         body: Container(
//           margin: EdgeInsets.all(50),
//           height: 200,
//           width: 200,
//           alignment: Alignment.topLeft,
//           color: Colors.blueGrey,
//           child: Text(
//             'Semangat Belajar Flutter',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

//CONTAINER PADDING//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Padding")),
//         body: Container(
//           padding: EdgeInsets.only(left: 20),
//           margin: EdgeInsets.all(20),
//           height: 200,
//           width: 200,
//           alignment: Alignment.topLeft,
//           color: Colors.blueGrey,
//           child: Text(
//             'Ayo Belajar Flutter',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

//CONTAINER TRANSFORM//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Transform")),
//         body: Container(
//           decoration: BoxDecoration(
//             image: const DecorationImage(
//               image: NetworkImage('https://i.pinimg.com/564x/5b/f6/2e/5bf62e55da4a40b52384c38028a65e4b.jpg'),
//               fit: BoxFit.fitWidth,
//             ),
//             border: Border.all(
//               color: Colors.black,
//               width: 8,
//             ),
//           ),
//           height: 200,
//           width: 300,
//           margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
//           transform: Matrix4.rotationZ(-0.1),
//         ),
//       ),
//     );
//   }
// }

//CONTAINER DECORATION//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Configuration")),
//         body: Container(
//           decoration: BoxDecoration(
//             color: const Color(0xff7c94b6),
//             image: const DecorationImage(
//               image: NetworkImage('https://i.pinimg.com/564x/5b/f6/2e/5bf62e55da4a40b52384c38028a65e4b.jpg'),
//               fit: BoxFit.fitWidth,
//             ),
//             border: Border.all(
//               color: Colors.black,
//               width: 8,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           height: 200,
//           width: 300,
//           margin: EdgeInsets.all(20),
//         ),
//       ),
//     );
//   }
// }

//COLUMN//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Column Widget")),
//         body: Column(
//           children: [
//             Container(
//               color: Colors.purpleAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.greenAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.orangeAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ROW//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Row Widget")),
//         body: Row(
//           children: [
//             Container(
//               color: Colors.purpleAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.greenAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.orangeAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//STACK//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Stack Widget")),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.bottomCenter,
//               child: Text("Satu", style: TextStyle(fontSize: 30, color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.bottomCenter,
//               child: Text("Dua", style: TextStyle(fontSize:30, color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.bottomCenter,
//               child: Text("Tiga", style: TextStyle(fontSize:30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//LIST VIEW//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh ListView Widget")),
//         body: ListView(
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.topLeft,
//               child: Text("ListView widget digunakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.", style: TextStyle(fontSize: 30,color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.topLeft,
//               child: Text("ListView widget digunakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.", style: TextStyle(fontSize: 30,color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.topLeft,
//               child: Text("ListView widget digunakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.", style: TextStyle(fontSize: 30,color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         )
//       ),
//     );
//   }
// }

//GRID VIEW//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh GridView Widget")),
//         body: GridView.count(
//           crossAxisCount: 2,
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.center,
//               child: Text("1", style: TextStyle(fontSize: 30, color: Colors.white),),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.center,
//               child: Text("2", style: TextStyle(fontSize: 30, color: Colors.white),),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.center,
//               child: Text("3", style: TextStyle(fontSize: 30, color: Colors.white),),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.blueGrey,
//               alignment: Alignment.center,
//               child: Text("4", style: TextStyle(fontSize: 30, color: Colors.white),),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.cyan[800],
//               alignment: Alignment.center,
//               child: Text("5", style: TextStyle(fontSize: 30, color: Colors.white),),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.yellow[800],
//               alignment: Alignment.center,
//               child: Text("6", style: TextStyle(fontSize: 30, color: Colors.white),),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

