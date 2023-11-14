 Nama    : Azka Nydia Estiningtyas <br>
 NPM     : 2206028970 <br>
 Kelas   : PBP E <br>

---
# food_inventory_mobile

---

# Direktori

- [Tugas 7](#tugas-7-checklist)
- [Tugas 8](#tugas-8-checklist)

---

# Tugas 7 Checklist

Checklist untuk tugas ini adalah sebagai berikut:<br>
<br>
- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.<br>
- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:<br>
    - Melihat daftar item (Lihat Item)<br>
    - Menambah item (Tambah Item)<br>
    - Logout (Logout)<br>
- [x] Memunculkan Snackbar dengan tulisan:<br>
    - "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.<br>
    - "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.<br>
    - "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.<br>
    <br>
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder.<br>
    1.  Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?<br>
        **Stateless Widget** : Widget yang tidak dapat berubah dan konfigurasinya sudah diinisiasi dari awal. Widget ini digunakan jika kita hanya ingin menampilkan suatu hal saja tanpa melakukan perubahan saat runtime, seperti Text, Icon, dan RaisedButton. Widget akan dirender satu kali dan tidak akan diperbarui sendiri, namun hanya akan diperbarui ketika data eksternal berubah.<br>
        <br>
        **Stateful widget** : widget yang bersifat dinamis atau dapat berubah-ubah. Widget ini dapat mengubah atau mengupdate tampilan, menambah widget lainnya, mengubah nilai variabel, icon, warna dan masih banyak lagi sesuai action dari pengguna. Stateful widget dapat diganti saat widget sedang runtime, seperti Checkbox, Radio Button, dan Slider.<br>
        <br>
    2.  Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing <br>
        - **MaterialApp**: widget root ini digunakan di bagian paling atas dari widget tree untuk mengatur tema dan konfigurasi app.<br>
        - **Scaffold**: widget ini digunakan untuk mengimplementasikan visual basic pada aplikasi, seperti untuk AppBar, Drawer, dan Snackbar.<br>
        - **AppBar**: Widget yang menampilkan bar aplikasi di bagian atas layar.<br>
        - **SingleChildScrollView**: Widget ini digunakan supaya konten dapat discroll saat kontennya lebih besar dari tempat yang ada.<br>
        - **GridView**: Widget ini digunakan untuk menampilkan grid sesuai jumlah baris dan kolom yang diinginkan.<br>
        - **Material**: Widget ini digunakan untuk menambahkan efek visual ke widget lain.<br>
        - **InkWell**: Widget ini digunakan untuk membuat area yang responsif terhadap sentuhan.<br>
        - **Container**: Widget ini digunakan untuk mengatur beberapa widget yang ada didalamnya menjadi satu.<br>
        - **Padding**: Widget ini digunakan untuk memberikan padding disekitar widget supaya ada jarak dengan widget lain.<br>
        - **Column**: Widget ini digunakan untuk menampilkan widget dalam tata letak vertikal.<br>
        - **Center**: Widget ini digunakan untuk mengatur lokasi menjadi ditengah.<br>
        - **Icon**: Widget ini digunakan untuk menampilkan ikon.<br>
        - **Text**: Widget ini digunakan untuk menampilkan teks.<br>
        <br>
    3.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)<br>
        (1) Pertama, saya membuat proyek flutter baru dengan nama ```food_inventory_mobile``` di folder yang ingin saya pakai menggunakan cmd.<br>

            flutter create food_inventory_mobile
            cd food_inventory_mobile


        (2) Lalu, pada folder lib didalam file proyek ```food_inventory_mobile```, saya membuat file bernama ```menu.dart``` . Saya memindahkan semua fungsi selain main dan myApps dari ```main.dart``` ke ```menu.dart``` dan melakukan import ```menu.dart``` di ```main.dart``` supaya ```MyHomePage()``` dapat diakses di main.<br>

        (3) Mengganti ```MyHomePage``` menjadi stateless widget dan membuat ```class InventoryItem``` beserta attributnya.<br>

            class InventoryItem {
                final String name;
                final IconData icon;
                final Color color;

                InventoryItem(this.name, this.icon, this.color);
            }


        (4) Menambahkan list yang menyimpan attribut dari item yang akan dipanggil di widget dibawah key. List ini akan membuat tiga tombol sederhana dengan ikon, teks, dan warna masing-masing.<br>
            
            final List<InventoryItem> items = [
                InventoryItem("Lihat Item", Icons.checklist, const Color.fromRGBO(248, 187, 208, 1)),
                InventoryItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(255, 145,190,220)),
                InventoryItem("Logout", Icons.logout, const Color.fromARGB(255, 145,153,220)),
                ];

        
        (5) Membuat ```class InventoryCard yang extends StatelessWidget```. Class ini akan membuat widget dan memanggil item dari InventoryItem. Supaya tiap widget memiliki warna yang berbeda, dimodifikasi ```color: item.color``` .

        (6) Untuk memunculkan meesage saat widget di klik. Pada class ```InventoryCard```, saya menggunakan function ```onTap()``` untuk menampilkan pesan/snackbar saat widget di klik.<br>
            
            onTap: () {
                ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
                },


        (7) Saya mengisi home di main.dart dengan memanggil fungsi ```MyHomePage()``` dari ```menu.dart```.<br>  

- [x] Melakukan add-commit-push ke GitHub.<br>
<br>
**Referensi** :
- https://www.depotkode.com/perbedaan-stateless-dan-stateful-pada-flutter/<br>
- https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/<br>

---

# Tugas 8 Checklist

- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:<br>
    - Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.<br>
    - Memiliki sebuah tombol Save.<br>
    - Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
        - Setiap elemen input tidak boleh kosong.
        - Setiap elemen input harus berisi data dengan tipe data atribut modelnya.<br>
- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.<br>
- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.<br>
- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:<br>
    - Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.<br>
    - Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.<br>
    - Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.<br>
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).<br>
    1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!<br>
        **Navigator.push()** : menambahkan suatu rute ke dalam stack rute paling atas sehingga halaman baru akan ditampilkan diatas halaman sebelumnya. Contohnya, saat sedang berada di Halaman A dan dilakukan Navigator.push() ke halamanan B, maka Halaman akan berganti ke Halaman B tetapi dapat kembali ke Halaman A dengan menekan tombol back.

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

        **Navigator.pushReplacement()** : Menghapus rute yang sedang ditampilkan dari paling atas stack rute dan digantikan dengan rute baru sehingga tampilan halaman akan berubah menjadi halaman dari rute paling atas terbaru. Contohnya, saat sedang berada di Halaman A dan dilakukan Navigator.pushReplacement() ke halamanan B, maka Halaman akan berganti ke Halaman B dan Halaman A tidak dapat diakses kembali jika ditekan tombol back.

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

        <br>
    2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!<br>
        - **Container** : Widget ini digunakan untuk mengatur tata letak dan dekorasi widget lain
        - **Padding**: Widget ini digunakan untuk memberikan padding disekitar widget supaya ada jarak dengan widget lain.
        - **Center** : Widget ini membuat widget letaknya di tengah.
        - **SingleChildScrollView** : Widget ini digunakan supaya konten dapat discroll saat kontennya lebih besar dari tempat yang ada.
        - **ListView** : Widget ini digunakan untuk membuat list dari child widget dan ingin menampilkannya semuanya pada screen.
        - **Stack** : Widget ini digunakan untuk menempatkan child widget di atas satu sama lain dan menampilkan widget yang berada pada stack paling atas.
        - **Column** : Widget ini digunakan untuk menampilkan widget children dalam tata letak vertikal.
        - **Align** : widget ini digunakan untuk menyelaraskan children dengan dirinya sendiri.

        <br>
    3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!<br>
        - **TextFormField**: Saya menggunakan elemen ini untuk meminta input teks dari pengguna.
        - **ElevatedButton** : Saya menggunakan elemen ini untuk mengirim / simpan form.
        - **AlertDialog** : Saya menggunakan elemen ini untuk menampilakn input teks dari pengguna setelah klik button save.

        Saya menggunakan elemen tersebut untuk mengambil input terhadap variabel nama item, jumlah, level gula, dan deskripsi menggunakan TextFormField. Sedangkan, ElevatedButton dan AlertDialog dipakai setelah pengguna memasukkan input dan klik save.
        <br>
    4. Bagaimana penerapan clean architecture pada aplikasi Flutter?<br>
        **Clean Architecture pada Flutter** adalah arsitektur yang menggunakan design principle separation of concern dan fokus dalam memisahkan software dalam layer terpisah supaya layer tersebut dapat dijalankan secara independent dan bagiannya dapat digunakan ulang untuk kode lain. Pemisahan kode dilakukan antara Feature layer (UI dan Event handler), Inner layer (Entities, Use Cases & Repository Interfaces), dan data layer(repository dan data source). Hal ini akan membuat kode menjadi lebih mudah diuji (testable), dapat dipelihara (maintainable), dan dapat ditingkatkan (scalable). <br>
        <br>
    5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)<br>
        1. Pertama, saya membuat file bernama ```shoplist_form.dart``` dan membuat _formKey sebagai key dalam menghandle form.

                class ShopFormPage extends StatefulWidget {
                    const ShopFormPage({super.key});

                    @override
                    State<ShopFormPage> createState() => _ShopFormPageState();
                }

                class _ShopFormPageState extends State<ShopFormPage> {
                    final _formKey = GlobalKey<FormState>();
                }


        2. Lalu, saya membuat 4 variabel sesuai dengan kebutuhan input aplikasi saya.

                String _name = "";
                int _amount = 0;
                String _sugarlevel = "";
                String _description = "";


        3. Setelah itu, saya TextFormField dan column untuk mengatur laman input item dalam aplikasi. Terdapat juga validasi jika input kosong dan validasi integer positif untuk input integer.
                
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Nama Item",
                        labelText: "Nama Item",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _name = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Nama tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                
            Diatas adalah potongan kode untuk input nama item, ketiga variabel lain menggunakan kode yang sama, tetapi terdapat validasi tambahan untuk variabel amount.

                //Validasi untuk amount
                validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Jumlah tidak boleh kosong!";
                      }
                      if (int.tryParse(value) == null) {
                        return "Jumlah harus berupa angka!";
                      }
                      return null;
                    },
                

        4. Supaya halaman form tambah input muncul ketika diklik tombol tambah item, maka saya menambahkan ```Navigator.push()``` pada atribut onTap() di file ```menu.dart```.

                if (item.name == "Tambah Item") {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShopFormPage(),
                    ));
                }
            
        5. Saya menambahkan tombol fungsi ```showDialog()``` pada bagian ```onPressed``` supaya popup yang berisi input yang telah dimasukkan muncul ketika tombol save di klik.

                onPressed: () {
                    if (_formKey.currentState!.validate()) {
                        showDialog(
                        context: context,
                        builder: (context) {
                            return AlertDialog(
                            title: const Text('Item berhasil tersimpan'),
                            content: SingleChildScrollView(
                                child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                    Text('Nama: $_name'),
                                    Text('Jumlah: $_amount'),
                                    Text('Level Gula: $_sugarlevel'),
                                    Text('Deskripsi: $_description'),
                                ],
                                ),
                            ),
                            actions: [
                                TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                    Navigator.pop(context);
                                },
                                ),
                            ],
                            );
                        },
                        );
                    _formKey.currentState!.reset();
                    }
                    }, 


        6. Untuk membuat drawer, saya membuat file baru dengan nama ```left_drawer.dart```. Lalu, saya mengimport file dart lain, dan menggunakan ```listTile``` untuk merouting ke halaman yang sudah di import. Saya juga menyesuaikan icon dari tiap laman dengan halaman utama.

                import 'package:flutter/material.dart';
                import 'package:food_inventory_mobile/menu.dart';
                import 'package:food_inventory_mobile/shoplist_form.dart';

                ...

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
            

        7. Setelah itu, saya menghias drawer dengan menyesuaikan warna pada navigator dengan halaman utama.

                const DrawerHeader(
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 189, 154, 122),
                    ),
                    child: Column(
                    children: [
                        Text(
                        'Inventory Navigator',
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

        8. Supaya dapat dilihat di halaman utama, saya menambahkan import file tersebut didalam main.dart dan memasukan LeftDrawe() kedalam drawer diatas home.

                drawer: const LeftDrawer(),
        
        9. Saya membuat file baru lagi bernama ```shop_card.dart``` yang berisi semua isi widget ```InventoryItem``` dari menu.dart.

        10. Untuk mempermudah menavigasi file, saya membuat 2 folder, ```widgets``` dan ```screens```, dan saya mengalokasikan semua file dart selain main kedalam folder tersebut sehingga saat mengimport file, akan terlihat seperti kode dibawah.

                import 'package:food_inventory_mobile/widgets/shop_card.dart';
                import 'package:food_inventory_mobile/widgets/left_drawer.dart';
                import 'package:food_inventory_mobile/screens/menu.dart';
                import 'package:food_inventory_mobile/screens/shoplist_form.dart';
        
        11. Saya membuat folder dan file baru yang akan menyimpan models dari item yang akan dimasukkan dalam form. 

                class Item {
                    final String name;
                    final int amount;
                    final String sugarLevel;
                    final String description;

                    Item({required this.name, required this.amount, required this.sugarLevel, required this.description});
                    }
            
        
        12. Lalu, saya membuat file baru bernama ```coffee_page.dart``` dan pada file ini, saya menyimpan dan menampilkan input yang sudah disave menggunakan list.

        13. Setelah itu, saya melakukan navigation.push() pada drawer dan shop_card supaya page dapat terlihat saat button/laman lihat item diklik.

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoffeeListPage(items: items),
                  ));
                  
        <br>
- [x] Melakukan add-commit-push ke GitHub.<br>

<br>
Referensi : <br>
- https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0
