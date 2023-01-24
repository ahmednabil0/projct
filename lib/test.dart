import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_projects/product.dart';

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.purple,
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    MaterialButton(
                        minWidth: 150,
                        height: 100,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (v) {
                            return Product();
                          }));
                        },
                        child: Image.network(
                          "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg",
                          width: 150,
                          height: 100,
                          fit: BoxFit.fill,
                        )),
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg"),
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg"),
                      )),
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg"),
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg"),
                      )),
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg"),
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg"),
                      )),
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.wp.com/rjeem.com/wp-content/uploads/2019/05/vegetables-fruit-mixed-heart.jpg "),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
