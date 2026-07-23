#  AgroVision AI

> **AI-powered Flutter application for real-time plant disease detection using TensorFlow Lite, Firebase Authentication, and on-device Machine Learning.**

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)
![TensorFlow Lite](https://img.shields.io/badge/TensorFlow-Lite-FF6F00?logo=tensorflow)
![Firebase](https://img.shields.io/badge/Firebase-Authentication-FFCA28?logo=firebase)
![Platform](https://img.shields.io/badge/Platform-Android-success)

---

# Overview

AgroVision AI is a Flutter-based mobile application that leverages Artificial Intelligence to identify plant diseases from leaf images.

The application enables users to capture or upload leaf images, preprocesses them, and performs **offline inference** using a TensorFlow Lite model. It then predicts the disease with a confidence score and provides treatment recommendations to help farmers make informed decisions.

This project was developed during my internship at **Warnal Labs Pvt. Ltd.** and demonstrates the integration of **Machine Learning**, **Flutter**, and **Firebase Authentication** in a production-style mobile application.

---

#  Features

-  AI-powered plant disease detection
-  Capture images using device camera
-  Select images from gallery
-  TensorFlow Lite on-device inference
-  Fast offline prediction
-  Confidence score visualization
-  Disease description and identification
-  Suggested remedies and preventive measures
-  Firebase Authentication (Login & Registration)
-  Responsive Flutter UI
-  Optimized image preprocessing
-  Modern user interface

---

#  System Architecture

```text
                   User
                     │
                     ▼
        Flutter Mobile Application
                     │
      ┌──────────────┴──────────────┐
      ▼                             ▼
 Camera Capture              Gallery Image
      │                             │
      └──────────────┬──────────────┘
                     ▼
          Image Preprocessing
                     │
                     ▼
       TensorFlow Lite Model
                     │
                     ▼
        Disease Prediction
                     │
                     ▼
      Confidence Score + Remedies
```

---

#  Application Workflow

```text
User Login
      │
      ▼
Home Screen
      │
      ▼
Capture / Select Leaf Image
      │
      ▼
Image Preprocessing
      │
      ▼
TensorFlow Lite Inference
      │
      ▼
Disease Classification
      │
      ▼
Confidence Score
      │
      ▼
Disease Information
      │
      ▼
Suggested Remedies
```

---

# 🛠️ Tech Stack

| Category | Technologies |
|----------|--------------|
| Mobile Development | Flutter, Dart |
| Machine Learning | TensorFlow Lite |
| Authentication | Firebase Authentication |
| Image Processing | Flutter Image Package |
| IDE | Android Studio, VS Code |
| Version Control | Git, GitHub |

---

#  Project Structure

```
lib/
│
├── models/
├── services/
├── screens/
├── widgets/
├── utils/
└── main.dart
```

---

# 📸 Application Screenshots

###  1. Welcome Screen
The entry screen introducing AgroVision AI.

<p align="center">
  <img src="<img width="768" height="1280" alt="AgroVision0" src="https://github.com/user-attachments/assets/4bf56277-20c3-405e-9461-d8b1f5344cec" />
</p>

---

###  2. User Authentication
Secure login and registration using Firebase Authentication.

<p align="center">
  <img src="<img width="768" height="1280" alt="AgroVision01" src="https://github.com/user-attachments/assets/abd2d671-e0f4-4508-a0b2-9e9d9b0b3407" />
" width="250"/>
</p>

---

###  3. Home Dashboard
Main dashboard providing access to disease detection features.

<p align="center">
  <img src="<img width="768" height="1280" alt="AgroVision1" src="https://github.com/user-attachments/assets/44d97d10-950b-4481-a386-76fb826026ca" />
  <img width="768" height="1280" alt="AgroVision3" src="https://github.com/user-attachments/assets/67380e83-b17c-4fa2-b7b4-1908b346be32" />
" width="250"/>
  
</p>



---

###  4. Leaf Image Selection & Crop
Capture or select a leaf image from the gallery and crop it before analysis.

<p align="center">
  <img src="<img width="768" height="1280" alt="AgroVision5" src="https://github.com/user-attachments/assets/00575632-eadf-41ac-8a62-9f75b90d0716" />
" width="250"/>
</p>

---

###  5. AI Disease Detection & Prediction Result
TensorFlow Lite processes the image and predicts the disease & Displays the detected disease, confidence score.

<p align="center">
  <img src="<img width="960" height="1600" alt="AgroVision6" src="https://github.com/user-attachments/assets/31dce9f7-a24d-4064-97da-2a25625feb55" />
" width="250"/>
</p>

---

# Installation

Clone the repository

```bash
git clone https://github.com/Sushant6404/agrovision-ai.git
```

Move into the project

```bash
cd agrovision-ai
```

Install dependencies

```bash
flutter pub get
```

Run the application

```bash
flutter run
```

---

#  Technical Highlights

- Cross-platform Flutter application
- Offline TensorFlow Lite inference
- Modular architecture
- Camera and Gallery integration
- Firebase Authentication
- Image preprocessing pipeline
- Responsive Material UI
- Production-ready project structure

---

#  Future Enhancements

-  Multi-crop disease detection
-  Cloud model updates
-  Weather-based recommendations
-  Multi-language support
-  Disease history tracking
-  AI chatbot for farmers
-  Location-based crop advisory

---

#  Developer

**Sushant Kumar Thakur**

- Flutter Developer
- AI & Machine Learning Enthusiast
- Data Analytics & Software Engineering Aspirant

**GitHub:** https://github.com/Sushant6404

**LinkedIn:** *(https://www.linkedin.com/in/sushant-thakur-075468321)*

---

# 📄 License

This project is licensed under the **MIT License**.

---

## ⭐ Support

If you found this project helpful, consider giving it a ⭐ on GitHub.

---

## 📌 Disclaimer

This repository is a **portfolio version** of the application developed during my internship. Proprietary company assets, confidential datasets, trained models, API keys, and credentials are **not included** in this repository.
