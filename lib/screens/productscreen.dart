import 'package:ecommerce_bag_ui/model/productmodal.dart';
import 'package:flutter/material.dart';


class ProductScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'EV 21 New Stylish PU Leather Backpack', price: '\$1600',imageUrl: "https://tse1.mm.bing.net/th?id=OIP.WF9C0oOZzbP6YWJiDXLHkwHaHa&pid=Api&P=0&h=180"),
    Product(name: 'Black Polyster Backpack For Men', price: '\$2890',imageUrl: "https://tse1.mm.bing.net/th?id=OIP.zieVycCtzSBLaSrCJCZROQAAAA&pid=Api&P=0&h=180"),
    Product(name: 'EV-2732L Evton Fashion Backpack For Women', price: '\$2200',imageUrl: "https://tse4.mm.bing.net/th?id=OIP.dftnd07miRARFBoqMT3dowHaE7&pid=Api&P=0&h=180"),
    Product(name: 'Korean Backpack for Male and Female', price: '\$1399',imageUrl: "https://tse4.mm.bing.net/th?id=OIP.dftnd07miRARFBoqMT3dowHaE7&pid=Api&P=0&h=180"),
    Product(name: 'EV-2732L Evton Fashion Backpack For Women', price: '\$2000',imageUrl: "https://tse3.mm.bing.net/th?id=OIP.spmRDSPhFlWwqxw1oetJIwHaHa&pid=Api&P=0&h=180"),
    Product(name: 'EV-2732L Evton Fashion Backpack For Women', price: '\$1600',imageUrl: "https://tse3.mm.bing.net/th?id=OIP.XAedoJPWaz1HBfnS0w_r0wHaHa&pid=Api&P=0&h=180"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 25),
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/ic_app_icon.png",
          width: 80,
          height: 40,
        ),
        actions: [
          Icon(Icons.person_2_outlined, size: 35),
        ],
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}
class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Set background color to white
          borderRadius: BorderRadius.circular(10.0), // Optional: add rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              product.price,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
