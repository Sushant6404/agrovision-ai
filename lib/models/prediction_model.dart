import 'dart:typed_data';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;

class PredictionModel {
  final String label;
  final double confidence;
  final String solution;

  PredictionModel({
    required this.label,
    required this.confidence,
    required this.solution,
  });
}

class ModelHelper {
  late Interpreter _interpreter;

  /// Load TFLite model
  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset(
      'assets/crop_disease_model.tflite',
    );
    print("✅ Model loaded successfully");
  }

  /// Preprocess image (128x128 + normalization)
  List<List<List<List<double>>>> preprocessImage(Uint8List imageBytes) {
    img.Image? image = img.decodeImage(imageBytes);

    if (image == null) {
      throw Exception("Image decoding failed");
    }

    image = img.copyResize(image, width: 128, height: 128);

    return [
      List.generate(128, (y) {
        return List.generate(128, (x) {
          var pixel = image!.getPixel(x, y);
          return [pixel.r / 255.0, pixel.g / 255.0, pixel.b / 255.0];
        });
      }),
    ];
  }

  /// Run prediction
  Future<PredictionModel> predict(Uint8List imageBytes) async {
    print("🚀 Prediction started");

    var input = preprocessImage(imageBytes);

    // Change length based on your model output classes
    List<String> labels = ["Healthy", "Disease1", "Disease2"];

    var output = List.generate(1, (_) => List.filled(labels.length, 0.0));

    _interpreter.run(input, output);

    print("✅ Prediction done: $output");

    int maxIndex = 0;
    double maxValue = output[0][0];

    for (int i = 1; i < output[0].length; i++) {
      if (output[0][i] > maxValue) {
        maxValue = output[0][i];
        maxIndex = i;
      }
    }

    String predictedLabel = labels[maxIndex];

    return PredictionModel(
      label: predictedLabel,
      confidence: maxValue,
      solution: getSolution(predictedLabel),
    );
  }

  /// Solution mapping
  String getSolution(String label) {
    switch (label) {
      case "Disease1":
        return "Apply recommended fungicide and remove infected leaves.";
      case "Disease2":
        return "Use neem oil spray and improve irrigation.";
      case "Healthy":
        return "No disease detected. Maintain current care.";
      default:
        return "No solution available.";
    }
  }
}
