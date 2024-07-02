import 'package:flutter/material.dart';

// Fungsi utama aplikasi Flutter
void main() {
  runApp(MyApp());
}

// Widget utama dari aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah widget yang memudahkan pengaturan beberapa widget lainnya
    return MaterialApp(
      // Menetapkan properti home ke profile
      home: profile(),
    );
  }
}

// Widget yang merepresentasikan halaman profil
class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan kerangka kerja untuk mengimplementasikan tata letak dasar desain material
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // BoxDecoration dengan LinearGradient untuk latar belakang gradien
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFD4A5FF), // Contoh warna gradien
              Color(0xFF40365E),
            ],
          ),
        ),
        // SafeArea untuk memastikan konten berada di dalam area yang aman pada perangkat
        child: SafeArea(
          // Padding untuk memberikan ruang di sekitar konten
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            // Column untuk menata widget secara vertikal
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Tombol kembali
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        // Menghandle tombol kembali
                      },
                    ),
                    Spacer(),
                    // Avatar profil
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.purple,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage('assets/profile_image.png'), // ganti dengan gambar Anda
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
                SizedBox(height: 20), // Jarak antara baris dan kontainer
                // Kontainer untuk menampilkan username
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFF807396),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      // Teks username
                      Expanded(
                        child: Text(
                          'Username',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(Icons.edit, color: Colors.amber),
                    ],
                  ),
                ),
                Divider(color: Colors.amber, thickness: 2, height: 40), // Pembatas
                // Opsi profil
                buildProfileOption(context, 'My Orders', Icons.shopping_bag),
                buildProfileOption(context, 'Payment Methods', Icons.attach_money),
                buildProfileOption(context, 'Language', Icons.language),
                buildProfileOption(context, 'Secure Account', Icons.security),
                buildProfileOption(context, 'Notification', Icons.notifications),
                Spacer(),
                // Opsi untuk mengubah password dan logout
                buildProfileOption(context, 'Change Password', Icons.lock, isButton: true),
                buildProfileOption(context, 'Logout', Icons.logout, isButton: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun opsi profil
  Widget buildProfileOption(BuildContext context, String title, IconData icon, {bool isButton = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isButton ? Colors.amber : Color(0xFF807396),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            // Teks opsi profil
            Expanded(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Icon(icon, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
