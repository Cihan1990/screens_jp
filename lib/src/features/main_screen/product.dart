import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

// Beispielprodukte
Product moglisCup = Product(
  name: "Mogli's Cup",
  description: "Strawberry ice cream",
  price: "A 8.99",
  image: 'lib/assets/Icons/cat cupcakes_3D.png',
);

Product balusCup = Product(
  name: "Balu's Cup",
  description: "Pistachio ice cream",
  price: "A 8.99",
  image: 'lib/assets/Icons/Ice.cream.png',
);

Product waffle = Product(
  name: "Waffle Ice",
  description: "You've got one waffle",
  price: "A 8.99",
  image: 'lib/assets/Icons/Icecream_3D.png',
);

Product stick = Product(
  name: "Ice Stick",
  description: "A sticky taste",
  price: "A 8.99",
  image: 'lib/assets/Icons/ice cream stick_3D.png',
);

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(91, 90, 95, 1),
            Color.fromRGBO(117, 87, 190, 1)
          ],
        ),
      ),
      // child: Padding(
      //   padding: const EdgeInsets.only(left: 15.0, top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 160,
            height: 190,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  product.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
