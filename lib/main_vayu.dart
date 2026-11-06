import 'package:flutter/material.dart';

void main() {
  runApp(const EnjoyFunApp());
}

class EnjoyFunApp extends StatelessWidget {
  const EnjoyFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enjoy Fun',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎮 ENJOY FUN', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        actions: const [Icon(Icons.settings, color: Colors.white), SizedBox(width: 15)],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE8DFFF), Color(0xFFFFE1F2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Text('Welcome to Enjoy Fun!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            const SizedBox(height: 20),
            const Text('🪙 10,000 Coins     💎 500 Diamonds', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 35),
            gameButton('🎲 LUDO', Colors.deepPurple),
            gameButton('🏆 JACKPOT', Colors.pink),
            gameButton('🎯 CARROM', Colors.blue),
            gameButton('🐍 SNAKES & LADDERS', Colors.green),
            const Spacer(),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Icon(Icons.sports_esports, size: 28), Icon(Icons.event, size: 28), Icon(Icons.chat, size: 28), Icon(Icons.people, size: 28), Icon(Icons.person, size: 28)],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

Widget gameButton(String name, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color, foregroundColor: Colors.white),
        onPressed: () {},
        child: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    ),
  );
}


