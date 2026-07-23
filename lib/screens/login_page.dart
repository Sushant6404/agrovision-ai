import 'package:flutter/material.dart';
import '../widgets/glass_card.dart';
import '../widgets/custom_button.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GlassCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Login", style: TextStyle(fontSize: 22)),
              const SizedBox(height: 10),

              TextField(decoration: const InputDecoration(labelText: "Email")),
              TextField(
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
              ),

              const SizedBox(height: 20),

              CustomButton(
                text: "Login",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
