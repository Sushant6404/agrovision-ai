import 'package:flutter/material.dart';
import 'image_page.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AgroVision AI")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                "AgroVision AI",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Detect Disease"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ImagePage()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to AgroVision AI 🌱",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
