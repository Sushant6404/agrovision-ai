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

#  Screenshots

> Add your screenshots here.

| Login | Home | Prediction |
|-------|------|------------|
| ![](<img width="768" height="1280" alt="AgroVision0" src="https://github.com/user-attachments/assets/c88391a0-c757-42e8-8fc2-55d107a645e4" />
) | ![](<img width="768" height="1280" alt="AgroVision01" src="https://github.com/user-attachments/assets/972630a8-8c58-4928-92fa-b46544853ce6" />
) | ![](<img width="768" height="1280" alt="AgroVision1" src="https://github.com/user-attachments/assets/d39ccc27-aa5c-4956-a9e0-292d664bd380" />
) |
) | ![](<img width="768" height="1280" alt="AgroVision2" src="https://github.com/user-attachments/assets/bf23eb3a-cbee-4ec6-b55b-b4f3d48003f3" />
) |
) | ![](<img width="768" height="1280" alt="AgroVision3" src="https://github.com/user-attachments/assets/9f590f64-0c8d-45b3-9387-3964125914e4" />
) |

) | ![](<img width="768" height="1280" alt="AgroVision5" src="https://github.com/user-attachments/assets/72ce9105-c0ad-404c-ae9c-cc54b2f70547" />
) |
) | ![](<img width="960" height="1600" alt="AgroVision6" src="https://github.com/user-attachments/assets/291b2246-6620-4601-b2fb-738766e0dcc1" />
) |

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
