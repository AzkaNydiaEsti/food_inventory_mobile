import 'package:flutter/material.dart';
import 'package:food_inventory_mobile/screens/coffee_page.dart';
import 'package:food_inventory_mobile/screens/menu.dart';
import 'package:food_inventory_mobile/screens/coffee_form.dart';
import 'package:food_inventory_mobile/screens/list_item.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 189, 154, 122),
            ),
            child: Column(
              children: [
                Text(
                  'Item Navigator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Search what you need here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600
                    ),
                    ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.coffee_maker),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShopFormPage(),
              ));
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.coffee),
          //   title: const Text('Lihat Item'),
          //   // Bagian redirection ke lihat item
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => CoffeeListPage(items: items),
          //         ));
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Lihat Item'),
            onTap: () {
                // Route menu ke halaman produk
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}