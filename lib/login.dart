import 'package:flutter/material.dart';
import 'package:flutter_projects/test.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String text = " ";
  bool pass = true;
  Icon ic = const Icon(Icons.remove_red_eye_outlined);
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            color: Colors.white,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                onFieldSubmitted: (v) {
                  print("v is $v");
                },
                onChanged: (s) {
                  print("s is $s");
                },
                decoration: InputDecoration(
                  labelText: "email",
                  hintText: "enter email",
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                obscureText: pass,
                controller: password,
                decoration: InputDecoration(
                  labelText: "password",
                  hintText: "enter password",
                  suffixIcon: IconButton(
                    icon: ic,
                    onPressed: () {
                      setState(() {
                        pass = !pass;
                        if (pass == false)
                          ic = Icon(Icons.remove_red_eye_rounded);
                        else
                          ic = Icon(Icons.remove_red_eye_outlined);
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: 200,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (v) {
                        return Test();
                      }));
                    },
                    color: Colors.pink,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Login"), Icon(Icons.login)]),
                  ))
            ])));
  }
}
