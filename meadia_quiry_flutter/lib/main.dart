// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     var screenWidth =MediaQuery.of(context).size.width;
//     var screenHeight =MediaQuery.of(context).size.height;
//     return  Scaffold(
//       body: screenWidth>=467 ? tabletHomePage(screenWidth,screenHeight ) : phoneHomePage(screenWidth, screenHeight)// else part
//
//     );
//   }
//
//   Widget tabletHomePage(double screenWidth, double screenHeight,){
//     return
//     ListView(
//        children: [
//          Container(
//            color: Colors.blueGrey,
//          child:TextField(
//            decoration: InputDecoration(
//              border: OutlineInputBorder(
//                borderRadius: BorderRadius.circular(10),
//
//              ),
//              hintText: "Name"
//            ),
//          ),
//          ),
//       Container(height: screenHeight, color: Colors.green, child: Text("Tablet or laptop"),)
//
//     ],
//     );
//
//   }
//   Widget phoneHomePage(double screenWidth, double screenHeight,){
//     return Container(height: screenHeight,width: screenWidth, color: Colors.grey,child: Text("Phone"));
//   }
// }


































import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Madhu Paatel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var screenWidth =MediaQuery.of(context).size.width;
    var screenHeight =MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
        backgroundColor: Colors.blueGrey,
      ),
        body: screenWidth>=467 ? tabletHomePage(screenWidth,screenHeight ) : phoneHomePage(screenWidth, screenHeight)// else part

    );
  }

  Widget tabletHomePage(double screenWidth, double screenHeight,){

    return
      Center(
      child:Container(
            width: 600,
            height: 400,


            child:GridView.count(crossAxisCount: 2,
            children: [
              TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
              TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
              TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
              TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
              TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
              TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
              FilledButton(onPressed: (){

BorderRadius.circular(5);
              }, child: Text("Submit")),



            ]),

      ),
      );

  }
  Widget phoneHomePage(double screenWidth, double screenHeight,){
    return Container(height: screenHeight,width: screenWidth, color: Colors.grey,child:Column(
      children: [
        TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
        TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
        TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
        TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
        TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
        TextField(decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))) ,),
      ],

    ),

    );
  }
}
