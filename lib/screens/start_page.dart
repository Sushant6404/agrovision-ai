import 'package:flutter/material.dart';
import '../widgets/glass_card.dart';
import '../widgets/custom_button.dart';
import 'login_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green, Colors.teal]),
        ),
        child: Center(
          child: GlassCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "AgroVision AI 🌱",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: "Start",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
