import 'package:flutter/material.dart';
import 'package:hello_world/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xafe',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "PoppinsRegular",
          textTheme: const TextTheme(
            displayLarge:
                TextStyle(fontFamily: "PoppinsBold", color: Colors.white),
            displayMedium:
                TextStyle(fontFamily: "PoppinsBold", color: Colors.white),
            displaySmall:
                TextStyle(fontFamily: "PoppinsBold", color: Colors.white),
            headlineLarge:
                TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
            headlineMedium:
                TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
            headlineSmall:
                TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
            bodyLarge:
                TextStyle(fontFamily: "PoppinsLight", color: Colors.white),
            bodyMedium:
                TextStyle(fontFamily: "PoppinsLight", color: Colors.white),
            bodySmall:
                TextStyle(fontFamily: "PoppinsLight", color: Colors.white),
            titleLarge:
                TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
            titleMedium:
                TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
            titleSmall:
                TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
          )),
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Counter App'),
      ),
      body: Center(
        child: Text(
          'You have pressed the button $_counter times.',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
