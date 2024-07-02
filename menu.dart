import 'package:flutter/material.dart';
import 'package:trix_app/profile.dart';

// Titik masuk aplikasi Flutter
void main() {
  runApp(MyApp());
}

// Widget utama dari aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah widget yang memudahkan pengaturan beberapa widget lainnya
    return MaterialApp(
      // Menetapkan properti home ke menu
      home: menu(),
    );
  }
}

// Widget yang merepresentasikan menu
class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan kerangka kerja untuk mengimplementasikan tata letak dasar desain material
    return Scaffold(
      backgroundColor: Color(0xFF3B305A), // Warna latar belakang layar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Color(0xFFD6B200)),
            onPressed: () {},
          ),
        ],
      ),
      // Padding untuk memberikan ruang horizontal
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        // Column untuk menata widget secara vertikal
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField untuk mencari
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20), // Jarak antara search field dan teks 'Categories'
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFFD6B200),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Jarak antara teks 'Categories' dan daftar kategori
            // Container untuk daftar kategori
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Item kategori
                  CategoryItem(icon: Icons.checkroom, label: 'Shirt'),
                  CategoryItem(icon: Icons.checkroom, label: 'Jacket'),
                  CategoryItem(icon: Icons.checkroom, label: 'Pants'),
                  CategoryItem(icon: Icons.checkroom, label: 'T-Shirt'),
                ],
              ),
            ),
            SizedBox(height: 20), // Jarak antara daftar kategori dan teks 'Selected For You'
            Text(
              'Selected For You',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Jarak antara teks 'Selected For You' dan daftar produk
            // Expanded untuk memperluas GridView
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  // Item produk
                  ProductItem(
                    image: 'assets/images/shirt1.png', 
                    name: 'SZF 705 LA',
                    price: 'Rp. 210.000',
                    rating: 4.5,
                  ),
                  ProductItem(
                    image: 'assets/images/shirt2.png',  
                    name: 'KIIKII',
                    price: 'Rp. 345.000',
                    rating: 5.0,
                  ),
                  ProductItem(
                    image: 'assets/images/shirt3.png', 
                    name: 'Crewneck 705',
                    price: 'Rp. 450.000',
                    rating: 4.0,
                  ),
                  ProductItem(
                    image: 'assets/images/pants1.png', 
                    name: 'Denim Jeans',
                    price: 'Rp. 600.000',
                    rating: 4.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // BottomNavigationBar untuk navigasi
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF3B305A),
        selectedItemColor: Color(0xFFD6B200),
        unselectedItemColor: Colors.white,
        onTap: (index) {
          // Menavigasi ke profil jika ikon pada indeks 3 ditekan
          if (index == 3) { // Asumsi ikon profil ada di indeks 3
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profile()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

// Widget untuk item kategori
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          // Lingkaran dengan ikon
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(icon, color: Color(0xFF3B305A)),
          ),
          SizedBox(height: 5), // Jarak antara ikon dan label
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

// Widget untuk item produk
class ProductItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final double rating;

  ProductItem({required this.image, required this.name, required this.price, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Menampilkan gambar produk
          Image.asset(
            image, // Ganti dengan path gambar Anda
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(price),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    SizedBox(width: 4), // Jarak antara ikon bintang dan rating
                    Text(rating.toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
