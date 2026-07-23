import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'result_page.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final ImagePicker picker = ImagePicker();
  bool isLoading = false;

  Future<void> pickImage(ImageSource source) async {
    try {
      setState(() => isLoading = true);

      final picked = await picker.pickImage(source: source);

      if (picked == null) {
        setState(() => isLoading = false);
        return;
      }

      /// Crop Image
      CroppedFile? cropped = await ImageCropper().cropImage(
        sourcePath: picked.path,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.green,
            toolbarWidgetColor: Colors.white,
            lockAspectRatio: false,
            initAspectRatio: CropAspectRatioPreset.original,
          ),
        ],
      );

      setState(() => isLoading = false);

      if (cropped != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ResultPage(image: File(cropped.path)),
          ),
        );
      }
    } catch (e) {
      setState(() => isLoading = false);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Image"), centerTitle: true),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Camera Button
                    ElevatedButton.icon(
                      icon: const Icon(Icons.camera_alt),
                      label: const Text("Take Photo"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 20,
                        ),
                      ),
                      onPressed: () => pickImage(ImageSource.camera),
                    ),

                    const SizedBox(height: 20),

                    /// Gallery Button
                    ElevatedButton.icon(
                      icon: const Icon(Icons.image),
                      label: const Text("Choose from Gallery"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 20,
                        ),
                      ),
                      onPressed: () => pickImage(ImageSource.gallery),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
