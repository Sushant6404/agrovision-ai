import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/start_page.dart';

Future<void> checkAssets() async {
  final manifest = await rootBundle.loadString('AssetManifest.json');
  print("📦 ASSETS LIST 👇");
  print(manifest);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ IMPORTANT

  await checkAssets(); // 👈 ADD THIS LINE

  runApp(const AgroVisionApp());
}

class AgroVisionApp extends StatelessWidget {
  const AgroVisionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgroVision AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Poppins'),
      home: const StartPage(),
    );
  }
}
