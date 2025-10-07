import 'package:flutter/material.dart';

void main() {
  runApp(const TasbihApp());
}

class TasbihApp extends StatelessWidget {
  const TasbihApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pangestu Aji Nugroho(202311017)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D7033),
        ),
        useMaterial3: true,
      ),
      home: const TasbihPage(),
    );
  }
}

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  State<TasbihPage> createState() => _TasbihPageState();
}

class _TasbihPageState extends State<TasbihPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF8F1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D7033),
        title: const Text(
          'Tasbih Digital',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hitungan Dzikir',
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF0D7033),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '$_count',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D7033),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _increment,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0D7033),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(40),
              ),
              child: const Icon(
                Icons.fingerprint,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _reset,
              icon: const Icon(Icons.refresh, color: Colors.white),
              label: const Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF388E3C),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
