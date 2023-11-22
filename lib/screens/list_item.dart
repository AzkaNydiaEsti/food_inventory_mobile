import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:food_inventory_mobile/models/item.dart';
import 'package:food_inventory_mobile/screens/item_detail.dart';
import 'package:food_inventory_mobile/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Item>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'http://localhost:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Item> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Item.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Daftar Item'), backgroundColor: const Color.fromRGBO(248, 187, 208, 1), foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data Item.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        // itemBuilder: (_, index) => Container(
                        //         margin: const EdgeInsets.symmetric(
                        //             horizontal: 16, vertical: 12),
                        //         padding: const EdgeInsets.all(20.0),
                        //         child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.start,
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //             Text(
                        //             "${snapshot.data![index].fields.name}",
                        //             style: const TextStyle(
                        //                 fontSize: 18.0,
                        //                 fontWeight: FontWeight.bold,
                        //             ),
                        //             ),
                        //             const SizedBox(height: 10),
                        //             Text("Quality    : ${snapshot.data![index].fields.quality}"),
                        //             const SizedBox(height: 10),
                        //             Text("Jumlah    : ${snapshot.data![index].fields.amount}"),
                        //             const SizedBox(height: 10),
                        //             Text(
                        //                 "Deskripsi: ${snapshot.data![index].fields.description}")
                        //         ],
                        //         ),
                        //     )
                        // itemBuilder: (context, index) {
                        //   return Card(
                        //     elevation: 5,
                        //     margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        //     child: ListTile(
                        //       title: Text("${snapshot.data![index].fields.name}",
                        //       style: const TextStyle(
                        //                 fontSize: 18.0,
                        //                 fontWeight: FontWeight.bold,
                        //                 ),),
                        //       subtitle: Text('Jumlah: ${snapshot.data![index].fields.amount} '),
                        //       onTap: () {
                        //         // Menampilkan popup dengan informasi barang yang di-klik
                        //         showDialog(
                        //           context: context,
                        //           builder: (context) {
                        //             return AlertDialog(
                        //               title: Text("${snapshot.data![index].fields.name}", 
                        //               style: const TextStyle(
                        //                 fontSize: 18.0,
                        //                 fontWeight: FontWeight.bold,
                        //                 ),),
                        //               content: Column(
                        //                 crossAxisAlignment: CrossAxisAlignment.start,
                        //                 mainAxisSize: MainAxisSize.min,
                        //                 children: [
                        //                   const SizedBox(height: 10),
                        //                   Text("Quality   : ${snapshot.data![index].fields.quality}"),
                        //                   const SizedBox(height: 10),
                        //                   Text("Type      : ${snapshot.data![index].fields.type}"),
                        //                   const SizedBox(height: 10),
                        //                   Text("Jumlah    : ${snapshot.data![index].fields.amount}"),
                        //                   const SizedBox(height: 10),
                        //                   Text("Deskripsi  : ${snapshot.data![index].fields.description}")
                        //                 ],
                        //               ),
                        //               actions: [
                        //                 TextButton(
                        //                   onPressed: () {
                        //                     Navigator.pop(context);
                        //                   },
                        //                   child: const Text('Close'),
                        //                 ),
                        //               ],
                        //             );
                        //           },
                        //         );
                        //       },
                        //     ),
                        //   );
                        // },

                      itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailPage(item: snapshot.data![index]),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data![index].fields.name}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text("Jumlah     : ${snapshot.data![index].fields.amount}"),
                              const SizedBox(height: 10),
                              Text("Deskripsi  : ${snapshot.data![index].fields.description}")
                            ],
                          ),
                        ),
                        ));
                    }
                }
            }));
    }
}