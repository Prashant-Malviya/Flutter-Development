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
      title: 'Namaste World🙏',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Basics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var randomNames = [
      'Raman',
      'Raja',
      'Rajesh',
      'Raj',
      'krish',
      'krishna',
      'gopal'
          'mohan',
      'radhika',
      'shyam',
    ];

    var randomImages = [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img2.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      // body: SizedBox(
      //   width: 200,
      //   height: 300,

      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text('A'),
      //           Text('B'),
      //           Text('C'),
      //           Text('D'),
      //           Text('E'),
      //           ElevatedButton(onPressed: () {}, child: Text('Click')),
      //         ],
      //       ),

      //       Column(
      //         children: [
      //           Text('A'),
      //           Text('B'),
      //           Text('C'),
      //           Text('D'),
      //           Text('E'),
      //           ElevatedButton(onPressed: () {}, child: Text('Click')),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),

      //boutton features
      // body: Container(
      //   child: ElevatedButton(
      //     child: Text('Click Me'),
      //     onPressed: () {
      //       print("Clicked on button");
      //     },
      //   ),
      // ),

      //inkwell widget
      // body: Center(
      //   child: InkWell(
      //     onTap: () {
      //       print('Tapped on Container');
      //     },

      //     onLongPress: () {
      //       print('Longpressed on container');
      //     },

      //     onDoubleTap: () {
      //       print("Double Tapped on Container");
      //     },

      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.amber,

      //       child: Center(
      //         child: InkWell(
      //           onTap: () {
      //             print('Text Widget Tapped');
      //           },
      //           child: Text(
      //             "Click Text here",
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // scrollview widget
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: EdgeInsets.only(bottom: 11),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: const Color.fromARGB(255, 195, 74, 96),
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: const Color.fromARGB(255, 74, 195, 153),
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: const Color.fromARGB(255, 159, 195, 74),
      //                   margin: EdgeInsets.only(right: 11),
      //                 ),

      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: const Color.fromARGB(255, 220, 220, 220),
      //                   margin: EdgeInsets.only(bottom: 11),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: const Color.fromARGB(255, 87, 171, 235),
      //                   margin: EdgeInsets.only(bottom: 11),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.lightGreen,
      //                   margin: EdgeInsets.only(bottom: 11),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),

      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: const Color.fromARGB(255, 74, 78, 195),
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: const Color.fromARGB(255, 87, 171, 235),
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.lightGreen,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.lightGreen,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.lightGreen,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),

      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.lightGreen,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.lightGreen,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.lightGreen,
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: const Color.fromARGB(255, 251, 247, 40),
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: const Color.fromARGB(255, 195, 74, 74),
      //           margin: EdgeInsets.only(bottom: 11),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // body: ListView(
      //   scrollDirection: Axis.horizontal,

      //   // reverse: true,
      //   children: [
      //     Text(
      //       'One',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //     Text(
      //       'two',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //     Text(
      //       'three',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //     Text(
      //       'four',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //     Text(
      //       'five',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //   ],
      // ),

      //listveiw seperated
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       randomNames[index],
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      //     );
      //   },
      //   itemCount: randomNames.length,
      //   separatorBuilder: (context, index) {
      //     return Divider(height: 100, thickness: 2);
      //   },
      // ),

      //container decoration
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.blue.shade50,
      //   child: Center(
      //     child: Container(
      //       width: 150,
      //       height: 150,
      //       decoration: BoxDecoration(
      //         color: const Color.fromARGB(255, 249, 247, 249),
      // borderRadius: BorderRadius.circular(20),
      //         border: Border.all(width: 4, color: Colors.amber),

      //         boxShadow: [
      //           BoxShadow(
      //             blurRadius: 8,
      //             spreadRadius: 20,
      //             color: const Color.fromARGB(255, 250, 199, 131),
      //           ),
      //         ],

      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //   ),
      // ),

      // Expanded Widgets
      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 10,
      //       child: Container(height: 100, color: Colors.orange),
      //     ),

      //     Expanded(
      //       flex: 10,
      //       child: Container(
      //         // width: 50,
      //         height: 100,
      //         color: const Color.fromARGB(255, 238, 241, 239),

      //         child: Container(
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             color: Colors.white,
      //             border: Border.all(width: 3, color: Colors.black),
      //           ),
      //         ),
      //       ),
      //     ),

      //     Expanded(
      //       flex: 10,
      //       child: Container(
      // width: 50,
      //         height: 100,
      //         color: const Color.fromARGB(255, 96, 183, 62),
      //       ),
      //     ),

      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: const Color.fromRGBO(119, 55, 248, 1),
      //       ),
      //     ),

      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: const Color.fromARGB(255, 21, 2, 2),
      //       ),
      //     ),
      //   ],
      // ),

      //list tile
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       // leading: Text('${index + 1}'),
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage(randomImages[index]),
      //       ),
      //       title: Text(randomNames[index]),
      //       subtitle: Text('Number'),
      //       trailing: Icon(Icons.add),
      //     );
      //   },

      //   itemCount: randomNames.length,
      //   separatorBuilder: (context, index) {
      //     return Divider(height: 20, thickness: 1);
      //   },
      // ),

      // circle avatar
      // body: Center(
      //   child: Container(
      //     width: 70,
      //     height: 70,
      //     child: CircleAvatar(
      // child: Text('Name', style: TextStyle(color: Colors.deepPurple)),
      // backgroundImage: AssetImage('assets/images/img1.jpg'),
      //       child: Column(
      //         children: [
      //           Container(
      //             width: 40,
      //             height: 40,
      //             child: Image.asset('assets/images/img1.jpg'),
      //           ),
      //           Text('John'),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: Text(
        'Namaste Bharat🙏🙏',
        style: TextStyle(fontFamily: 'RegularFont'),
      ),
    );
  }
}
