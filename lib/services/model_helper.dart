import 'dart:io';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;

class ModelHelper {
  static Interpreter? _interpreter;

  /// Load model
  static Future<void> loadModel() async {
    try {
      print("🔍 Loading model...");

      _interpreter = await Interpreter.fromAsset(
        'assets/model/crop_disease_model.tflite',
      );

      print("✅ Model loaded successfully");

      print("Input Shape: ${_interpreter!.getInputTensor(0).shape}");
      print("Output Shape: ${_interpreter!.getOutputTensor(0).shape}");
    } catch (e) {
      print("❌ MODEL LOAD ERROR 👉 $e");
      _interpreter = null;
      rethrow;
    }
  }

  /// Prediction
  static Future<Map<String, dynamic>> predict(
    File file,
    List<String> classes,
  ) async {
    try {
      if (_interpreter == null) {
        return {"label": "Model not loaded", "confidence": 0};
      }

      img.Image? image = img.decodeImage(file.readAsBytesSync());
      if (image == null) {
        return {"label": "Invalid Image", "confidence": 0};
      }

      int inputSize = _interpreter!.getInputTensor(0).shape[1];

      img.Image resized = img.copyResize(
        image,
        width: inputSize,
        height: inputSize,
      );

      var input = [
        List.generate(
          inputSize,
          (y) => List.generate(inputSize, (x) {
            var pixel = resized.getPixel(x, y);
            return [pixel.r / 255.0, pixel.g / 255.0, pixel.b / 255.0];
          }),
        ),
      ];

      int outputSize = _interpreter!.getOutputTensor(0).shape[1];
      var output = List.generate(1, (_) => List.filled(outputSize, 0.0));

      _interpreter!.run(input, output);

      List<double> scores = List<double>.from(output[0]);

      double maxScore = scores[0];
      int index = 0;

      for (int i = 1; i < scores.length; i++) {
        if (scores[i] > maxScore) {
          maxScore = scores[i];
          index = i;
        }
      }

      if (index >= classes.length) {
        return {"label": "Unknown", "confidence": 0};
      }

      return {
        "label": classes[index],
        "confidence": (maxScore * 100).toStringAsFixed(2),
      };
    } catch (e) {
      print("❌ Prediction Error: $e");
      return {"label": "Error", "confidence": 0};
    }
  }
}
