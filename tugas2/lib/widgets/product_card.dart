import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'name': 'Intel Core i9 14900K',
      'price': 'Rp 7.500.000',
      'image': 'assets/images/i914900k.jpg',
    },
    {
      'name': 'AMD Ryzen 9',
      'price': 'Rp 6.800.000',
      'image': 'assets/images/ryzen9.jpg',
    },
    {
      'name': 'Motherboard NZXT',
      'price': 'Rp 3.200.000',
      'image': 'assets/images/mobonzxt.jpg',
    },
    {
      'name': 'MSI GeForce RTX 4090',
      'price': 'Rp 25.000.000',
      'image': 'assets/images/4090msi.jpg',
    },
    {
      'name': 'ASUS ROG RTX 3090',
      'price': 'Rp 15.000.000',
      'image': 'assets/images/3090rog.jpg',
    },
    {
      'name': 'ASRock RX 7900 XTX',
      'price': 'Rp 13.000.000',
      'image': 'assets/images/7900xtxasrock.jpg',
    },
    {
      'name': 'Samsung 990 Pro SSD',
      'price': 'Rp 2.500.000',
      'image': 'assets/images/990pro.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 0.85,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          name: products[index]['name']!,
          price: products[index]['price']!,
          image: products[index]['image']!,
        );
      },
    );

  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  ProductCard({
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
