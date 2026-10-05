import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Digit terakhir NIM 20240801085 = 5 (Ganjil)
    // Warna background: Colors.tealAccent[100]
    return MaterialApp(
      title: 'Tugas Layout Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.tealAccent[100],
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Mahasiswa'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      // Memposisikan ProfileCard di tengah layar
      body: const Center(
        child: ProfileCard(
          nama: 'NADHIF SHOEEMA GOLDIST',
          nim: '20240801085',
          hobi: 'Coding & Gaming',
          skorAktivitas: 135, // 85 + 50 = 135
        ),
      ),
    );
  }
}
