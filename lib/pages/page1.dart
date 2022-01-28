import 'package:flutter/material.dart';
import 'package:kadai/pages/page2.dart';

class Page1 extends StatefulWidget {
  String inputpassword;
  Page1(this.inputpassword);
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int wrong = 0;
  String password = "test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("パスワードの確認"),
      ),
      body: Container(
        child: Center(
          child: Row(
            children: [
              Flexible(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "パスワードを入力してください"
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                }
            ),
            ),
              ElevatedButton(
              onPressed: () {
                if (password == widget.inputpassword) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page2();
                  }));
                }else{
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text("パスワードが違います"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                };
              }, child: Text("確認")),
        ],
          ),
      ),
      ),
    );
  }
}
