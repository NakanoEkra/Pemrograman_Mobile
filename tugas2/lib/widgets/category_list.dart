import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'name': 'CPU', 'image': 'assets/images/cpu.png'},
    {'name': 'MOTHERBOARD', 'image': 'assets/images/motherboard.png'},
    {'name': 'GPU', 'image': 'assets/images/vga.png'},
    {'name': 'SSD', 'image': 'assets/images/ssd.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.green[100],
                  backgroundImage: AssetImage(categories[index]['image']!), //
                ),
                SizedBox(height: 4),
                Text(categories[index]['name']!, style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}
