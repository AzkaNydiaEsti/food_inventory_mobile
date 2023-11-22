// import 'package:flutter/material.dart';
// import 'package:food_inventory_mobile/widgets/left_drawer.dart';
// import 'package:food_inventory_mobile/models/item_model.dart';

// class CoffeeListPage extends StatefulWidget {
//   final List<Item> items;

//   const CoffeeListPage({Key? key, required this.items})
//       : super(key: key);

//   @override
//   _CoffeeListPageState createState() => _CoffeeListPageState();
// }

// class _CoffeeListPageState extends State<CoffeeListPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Daftar Coffee'),
//         backgroundColor: const Color.fromARGB(255, 189, 154, 122),
//         foregroundColor: Colors.white,
//       ),
//       drawer: const LeftDrawer(),
//       body: ListView.builder(
//         itemCount: widget.items.length,
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 5,
//             margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//             child: ListTile(
//               title: Text(widget.items[index].name),
//               subtitle: Text('Jumlah: ${widget.items[index].amount} '),
//               onTap: () {
//                 // Menampilkan popup dengan informasi barang yang di-klik
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text(widget.items[index].name),
//                       content: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text('Jumlah: ${widget.items[index].amount}'),
//                           Text('Level Gula: ${widget.items[index].sugarLevel}'),
//                           Text('Deskripsi: ${widget.items[index].description}'),
//                         ],
//                       ),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: const Text('Close'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }