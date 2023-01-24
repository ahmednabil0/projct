import 'package:flutter/material.dart';

import 'data.dart';
import 'product_details.dart';

class Products extends StatelessWidget {
  Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'متجرنا',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2.2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 200),
            padding: const EdgeInsets.all(10),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                  return ProductDetails(
                    myProducts: myProducts[index]["cat"],
                    name: myProducts[index]["name"],
                  );
                })),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(
                          0.2,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 130,
                        child: Image.network(
                          myProducts[index]["photo"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        myProducts[index]["name"],
                        style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            }),
      )),
    );
  }
}
