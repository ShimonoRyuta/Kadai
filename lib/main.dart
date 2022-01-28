import 'package:flutter/material.dart';
import 'package:kadai/pages/page1.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Navigation Basics",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _inputpassword = "test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("パスワードの作成"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                obscureText: true,
              decoration: InputDecoration(
                  hintText: "パスワードを作成してください"
              ),
              onChanged: (value) {
                setState(() {
                  _inputpassword = value;
                });
              }
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page1(_inputpassword);
                }));
              }, child: Text("次に進む"))
        ],
      ),
    );
  }
}
