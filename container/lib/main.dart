import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(

        // child: (
        //     Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.limeAccent,
        //       child: Center(
        //         child: Text('Hellow Prashant'),
        //       )
        //
        //     )
        // ),

        child: Text("Namaste World", style:TextStyle(fontSize: 25))
      )


    );
  }
}
