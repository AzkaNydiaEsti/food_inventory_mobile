import 'package:flutter/material.dart';
import 'package:food_inventory_mobile/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: const Color.fromARGB(255, 145,153,220),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${item.fields.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Quality     : ${item.fields.quality}"),
            const SizedBox(height: 10),
            Text("Type        : ${item.fields.type}"),
            const SizedBox(height: 10),
            Text("Jumlah    : ${item.fields.amount}"),
            const SizedBox(height: 10),
            Text("Deskripsi : ${item.fields.description}")
          ],
        ),
      ),
    );
  }
}
