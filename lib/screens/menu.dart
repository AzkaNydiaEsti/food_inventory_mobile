import 'package:flutter/material.dart';
import 'package:food_inventory_mobile/widgets/left_drawer.dart';
import 'package:food_inventory_mobile/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<InventoryItem> items = [
    InventoryItem("Lihat Item", Icons.coffee, const Color.fromRGBO(248, 187, 208, 1)),
    InventoryItem("Tambah Item", Icons.coffee_maker, const Color.fromARGB(255, 145,190,220)),
    InventoryItem("Logout", Icons.logout, const Color.fromARGB(255, 145,153,220)),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Esti Item House',
        ),
        backgroundColor:  const Color.fromARGB(255, 189, 154, 122),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'ITEM INVENTORY', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((InventoryItem item) {
                  // Iterasi untuk setiap item
                  return InventoryCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
    }
}

