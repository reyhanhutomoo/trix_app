import 'package:flutter/material.dart';
import 'package:trix_app/menu.dart';
import 'package:trix_app/signup.dart';

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
      // Menetapkan properti home ke LoginScreen
      home: LoginScreen(),
    );
  }
}

// Widget yang merepresentasikan layar login
class LoginScreen extends StatelessWidget {
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
                      SizedBox(height: 20), // Jarak antara input password dan tombol login
                      // Tombol login
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Mengganti properti primary dengan backgroundColor
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
                        child: Text('Login'),
                      ),
                      SizedBox(height: 20), // Jarak antara tombol login dan ikon sosial
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
                      SizedBox(height: 20), // Jarak antara ikon sosial dan teks daftar
                      // Baris teks daftar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Doesn't have an Account yet? "),
                          GestureDetector(
                            onTap: () {
                              // Navigasi ke SignupScreen saat teks ditekan
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => signup()),
                              );
                            },
                            child: Text(
                              "Sign up here",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
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
