import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(147, 0, 0, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/icon_owl.png', width: 210),
            const SizedBox(height: 17),
            const Text(
              'BIMKO',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'ProtestGuerrilla',
              ),
            ),
            const SizedBox(height: 200),
            const Text(
              '\u00A9 2024 Powered by BK SMANSA SMAN 1 SINDANG.',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo BIMKO
                  const Text(
                    'BIMKO',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(147, 0, 0, 1),
                      fontFamily: 'ProtestGuerrilla',
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Ilustrasi Gambar
                  Image.asset(
                    'assets/img/icon_login.png',
                    width: 250,
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(right: 90), // Geser teks ke kanan 40px
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Selamat Datang di ",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "BIMKO",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(147, 0, 0, 1),
                              fontFamily: 'ProtestGuerrilla',
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.only(right: 60), // Geser teks lebih ke kiri
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Menjaga teks tetap rata kiri
                      children: [
                        Text(
                          "Portal Layanan Bimbingan Konseling digital",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "untuk siswa",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Input NISN atau Email
                  SizedBox(
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person, color: Colors.red),
                        hintText: "NISN atau Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Input Kata Sandi
                  SizedBox(
                    width: 320,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: Colors.red),
                        suffixIcon: const Icon(Icons.visibility, color: Colors.red),
                        hintText: "Kata Sandi",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Tombol Masuk
                  SizedBox(
                    width: 320,
                    height: 50,
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 255, 133, 141), Color.fromRGBO(147, 0, 0, 1),], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparan agar gradasi terlihat
                          shadowColor: Colors.transparent, // Hilangkan shadow default
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(height: 28),

                  // Footer
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "© 2024 Powered by ",
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        TextSpan(
                          text: "polindra",
                          style: TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: " SMAN 1 SINDANG.",
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
