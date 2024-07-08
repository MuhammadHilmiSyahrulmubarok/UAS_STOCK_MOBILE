import 'package:flutter/material.dart';
import 'stok_saya_page.dart'; // Import StokSayaPage

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Page')), // Title di tengah
        backgroundColor: const Color.fromARGB(255, 173, 157, 132), // Warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 164, 148, 125), // Warna tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Radius sudut
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StokSayaPage()),
                );
              },
              child: const Text('Stok Saya'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 142, 129, 109), // Warna tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Radius sudut
                ),
              ),
              onPressed: () {
                // Aksi untuk tombol "Tentang ShopSendalHil"
              },
              child: const Text('Tentang ShopSendalHil'),
            ),
          ],
        ),
      ),
    );
  }
}
