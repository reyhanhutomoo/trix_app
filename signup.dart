import 'package:flutter/material.dart';
import 'package:trix_app/menu.dart';

// Widget yang merepresentasikan layar signup
class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan kerangka kerja untuk mengimplementasikan tata letak dasar desain material
    return Scaffold(
      // Container untuk menerapkan dekorasi
      body: Container(
        // BoxDecoration untuk menerapkan latar belakang gradasi
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFCCE0FF), // Warna biru muda
              Color(0xFFB1E0FE), // Warna biru muda lainnya
            ],
          ),
        ),
        // Center untuk menempatkan widget di tengah
        child: Center(
          // SingleChildScrollView memungkinkan tampilan bergulir jika konten lebih besar dari layar
          child: SingleChildScrollView(
            // Column untuk menata widget secara vertikal
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Menampilkan logo
                Image.asset(
                  'images/logo.png', // Ganti dengan path logo Anda
                  height: 100,
                ),
                SizedBox(height: 20), // Jarak antara logo dan teks
                // Teks 'Welcome'
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Teks 'to TRIX'
                Text(
                  'to TRIX',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: 20), // Jarak antara teks dan form input
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // Input untuk nama
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10), // Jarak antara input nama dan email
                      // Input untuk email
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10), // Jarak antara input email dan password
                      // Input untuk password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10), // Jarak antara input password dan konfirmasi password
                      // Input untuk konfirmasi password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Jarak antara input konfirmasi password dan tombol sign up
                      // Tombol sign up
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          // Navigasi ke MenuScreen saat tombol ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => menu()),
                          );
                        },
                        child: Text('Sign Up'),
                      ),
                      SizedBox(height: 20), // Jarak antara tombol sign up dan ikon sosial
                      // Baris ikon sosial
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.camera_alt),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.g_translate),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.facebook),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
