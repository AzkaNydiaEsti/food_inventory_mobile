 Nama    : Azka Nydia Estiningtyas <br>
 NPM     : 2206028970 <br>
 Kelas   : PBP E <br>

---
# food_inventory_mobile

---

# Direktori

- [Tugas 7](#tugas-7-checklist)

---

# Tugas 7 Checklist
Checklist untuk tugas ini adalah sebagai berikut:<br>
<br>
- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.<br>
    <br>
- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:<br>
    - Melihat daftar item (Lihat Item)<br>
    - Menambah item (Tambah Item)<br>
    - Logout (Logout)<br>
    <br>
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
        - **Scaffold**: widget ini digunakan untuk menyediakan struktur visual dasar pada aplikasi, seperti untuk AppBar, Drawer, dan Snackbar.<br>
        - **AppBar**: Widget untuk menampilkan bar aplikasi di bagian atas Scaffold.<br>
        - **SingleChildScrollView**: Widget ini digunakan supaya konten dapat discroll jika kontennya lebih besar dari ruang yang tersedia.<br>
        - Padding: Widget ini digunakan untuk memberikan padding disekitar widget supaya ada jarak dengan widget lain.<br>
        - **Column**: Widget ini digunakan untuk menampilkan widget dalam tata letak vertikal.<br>
        - **GridView**: Widget ini digunakan untuk menampilkan tata letak grid sesuai jumlah kolom yang diinginkan.<br>
        - **Material**: Widget ini digunakan untuk memberikan efek visual Material Design ke widget lain.<br>
        - **InkWell**: Widget ini digunakan untuk membuat area yang responsife terhadap sentuhan.<br>
        - **Container**: Widget ini digunakan untuk mengatur beberapa widget yang ada didalamnya menjadi satu.<br>
        - **Center**: Widget ini digunakan untuk mengatur lokasi menjadi ditengah.<br>
        - **Icon**: Widget ini digunakan untuk menampilkan ikon.<br>
        - **Text**: Widget ini digunakan untuk menampilkan teks.<br>
        <br>
    3.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)<br>
        (1) Pertama, saya membuat proyek flutter baru dengan nama ```food_inventory_mobile``` di folder yang ingin saya pakai menggunakan cmd.<br>
            ``` 

            flutter create food_inventory_mobile
            cd food_inventory_mobile

            ```

        (2) Lalu, pada folder lib didalam file proyek food_inventory_mobile, saya membuat file bernama ```menu.dart``` . Saya memindahkan semua fungsi selain main dan myApps dari main.dart ke menu.dart dan melakukan import menu.dart di main.dart.<br>

        (3) Mengganti MyHomePage menjadi stateless widget dan membuat class InventoryItem beserta attributnya.<br>
            ```

            class InventoryItem {
                final String name;
                final IconData icon;
                final Color color;

                InventoryItem(this.name, this.icon, this.color);
            }

            ```

        (4) Menambahkan list yang menyimpan attribut dari item yang akan dipanggil di widget dibawah key. List ini akan membuat tiga tombol sederhana dengan ikon, teks, dan warna masing-masing.<br>
            ```

            final List<InventoryItem> items = [
                InventoryItem("Lihat Item", Icons.checklist, const Color.fromRGBO(248, 187, 208, 1)),
                InventoryItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(255, 145,190,220)),
                InventoryItem("Logout", Icons.logout, const Color.fromARGB(255, 145,153,220)),
                ];

            ```
        
        (5) Membuat ```class InventoryCard yang extends StatelessWidget```. Class ini akan membuat widget dan memanggil item dari InventoryItem. Supaya tiap widget memiliki warna yang berbeda, dimodifikasi ```color: item.color``` .

        (6) Untuk memunculkan snackbar, pada class ```InventoryCard```, saya menggunakan function onTap() untuk menampilkan pesan saat widget di klik.<br>
            ```
            
            onTap: () {
                ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
                },

            ```

        (7) Saya mengisi home di main.dart dengan memanggil fungsi MyHomePage() dari menu.dart.<br>  

- [x] Melakukan add-commit-push ke GitHub.<br>
<br>
Referensi :<br>
- https://www.depotkode.com/perbedaan-stateless-dan-stateful-pada-flutter/<br>
- https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/<br>
