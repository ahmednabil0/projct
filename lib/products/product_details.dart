import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({required this.myProducts, required this.name, super.key});
  List myProducts;
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          name,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
              return Container(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '${myProducts[index]["price"]} EG',
                          style: const TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          myProducts[index]["name"],
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      )),
    );
  }
}
