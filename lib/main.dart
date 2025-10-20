import 'package:flutter/material.dart';

// fungsi utama, menjalankan aplikasi Flutter
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan label debug di pojok
      home: Scaffold(
        appBar: AppBar(
          // judul di bagian atas (navbar)
          title: const Text('Miftahul Ma\'arif G - 231080200073'),
          centerTitle: true, // agar judul berada di tengah
        ),

        // isi tampilan utama
        body: ListView(
          // daftar berisi 3 kartu buku & mengambil gambar random dari unplash
          children: [
            bukuCard('Stoikisme', 'Rp 75.000', 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=800&q=60'),
            bukuCard('Rembulan', 'Rp 65.000', 'https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=800&q=60'),
            bukuCard('Bumi', 'Rp 80.000', 'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?auto=format&fit=crop&w=800&q=60'),
          ],
        ),
      ),
    );
  }

  // fungsi kecil untuk membuat 1 kartu buku
  Widget bukuCard(String judul, String harga, String url) => Card(
        // Card = tampilan berbentuk kartu
        child: ListTile(
          // ListTile = komponen siap pakai berisi gambar, teks, dan ikon
          leading: Image.network(url, width: 60, fit: BoxFit.cover), // gambar buku
          title: Text(judul), // judul buku
          subtitle: Text(harga), // harga buku
          trailing: const Icon(Icons.shopping_cart), // ikon keranjang belanja
        ),
      );
}
