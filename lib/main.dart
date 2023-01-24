import 'package:flutter/material.dart';

import 'login.dart';
import 'products/products.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Products(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("اهلا بك في متجرنا",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              Text("حيث تتوافر جميع المنتجات الغذائية",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              Text("اللتي تحتاجها عملنا العزيز",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              Text("الرجاء الضغط علي الزر الاتي",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              Text("للذهاب لقائمة المنتجات",
                  style: TextStyle(fontSize: 30, color: Colors.green)),
              MaterialButton(
                  color: Colors.red,
                  elevation: 20,
                  splashColor: Colors.blue,
                  height: 40,
                  minWidth: 200,
                  textColor: Colors.black,
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                      return Login();
                    }));
                  }),
                  child: Text("الذهاب للقائمة"))
            ],
          ),
        ),
      ),
    );
  }
}
