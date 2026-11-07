import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 1 - Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00897B),
        ),
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 1 - Hello World'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlutterLogo(size: 90),
            SizedBox(height: 20),
            Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Nama  : M. Gali Almahdi',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 4),
            Text(
              'NIM   : 4243250042',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 4),
            Text(
              'Kelas : PSIK 24 D 2024',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
