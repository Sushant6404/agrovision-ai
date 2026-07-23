import 'dart:io';
import 'package:flutter/material.dart';
import '../services/model_helper.dart';

class ResultPage extends StatefulWidget {
  final File image;

  const ResultPage({super.key, required this.image});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String result = "Processing...";
  String solution = "";
  bool isLoading = true;

  /// ✅ CORRECT 15 CLASSES (MATCH MODEL EXACTLY)
  final List<String> classes = [
    "Pepper__bell___Bacterial_spot",
    "Pepper__bell___healthy",
    "Potato___Early_blight",
    "Potato___Late_blight",
    "Potato___healthy",
    "Tomato_Bacterial_spot",
    "Tomato_Early_blight",
    "Tomato_Late_blight",
    "Tomato_Leaf_Mold",
    "Tomato_Septoria_leaf_spot",
    "Tomato_Spider_mites_Two_spotted_spider_mite",
    "Tomato__Target_Spot",
    "Tomato__Tomato_YellowLeaf__Curl_Virus",
    "Tomato__Tomato_mosaic_virus",
    "Tomato_healthy",
  ];

  /// ✅ SOLUTIONS MAP (IMPORTANT)
  final Map<String, String> solutions = {
    "Tomato_Early_blight": "Use Mancozeb fungicide.",
    "Tomato_Late_blight": "Apply copper fungicide.",
    "Tomato_healthy": "Healthy plant.",
    "Potato___Early_blight": "Use fungicide spray.",
    "Potato___Late_blight": "Avoid excess moisture.",
    "Pepper__bell___Bacterial_spot": "Use disease-free seeds.",
  };

  /// ✅ CLEAN LABEL FORMAT
  String cleanLabel(String label) {
    return label
        .replaceAll("___", " - ")
        .replaceAll("__", " ")
        .replaceAll("_", " ");
  }

  @override
  void initState() {
    super.initState();
    loadAndPredict();
  }

  Future<void> loadAndPredict() async {
    try {
      await ModelHelper.loadModel();

      var prediction = await ModelHelper.predict(widget.image, classes);

      setState(() {
        result =
            "${cleanLabel(prediction["label"])} (${prediction["confidence"]}%)";

        solution =
            solutions[prediction["label"]] ?? "Consult agriculture expert.";

        isLoading = false;
      });
    } catch (e) {
      print("❌ FINAL ERROR: $e");

      setState(() {
        result = "Error: ${e.toString()}";
        solution = "Check model or input image.";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.file(widget.image, height: 250),

                    const SizedBox(height: 20),

                    Text(
                      result,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Card(
                      color: Colors.green.shade100,
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Solution:\n$solution",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
