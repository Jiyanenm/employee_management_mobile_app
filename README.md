# Employee Management Mobile App

A cross-platform Employee Management mobile application built with **Flutter and Dart**, supporting Android and iOS. The application enables administrators to authenticate securely and manage employee records using Firebase Authentication and Cloud Firestore.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Technology Stack](#technology-stack)
4. [Application Architecture](#application-architecture)
5. [Firebase Configuration](#firebase-configuration)
6. [Firestore Data Structure](#firestore-data-structure)
7. [Application Screens](#application-screens)
8. [Getting Started](#getting-started)
9. [Running the Application](#running-the-application)
10. [Testing and Code Quality](#testing-and-code-quality)
11. [Application Branding and Icons](#application-branding-and-icons)
12. [Building Release Applications](#building-release-applications)
13. [Security Considerations](#security-considerations)
14. [Future Improvements](#future-improvements)
15. [Author](#author)

---

## Project Overview

The Employee Management Mobile App is designed to provide administrators with a convenient way to manage employee information from mobile devices.

The application is developed using Flutter, allowing a shared Dart codebase to support both Android and iOS platforms.

Firebase provides the backend services for authentication and employee data management.

**Project Repository:**  
https://github.com/Jiyanenm/employee_management_mobile_app

**Application Name:** Employee Management

**Platforms:** Android and iOS

---

## Features

### Authentication
- Administrator login.
- Administrator registration.
- Forgot password functionality.
- Firebase Authentication integration.
- Secure authentication through Firebase.

### Employee Management
- View employee records.
- Add new employees.
- Edit existing employee information.
- Delete employee records.
- Search employees.
- Manage employee departments.
- Manage employee active and inactive statuses.

### Dashboard
- Welcome dashboard for authenticated administrators.
- Employee listing.
- Employee search functionality.
- Access to employee management operations.
- Logout functionality.

### Application Design
- Custom authentication screens.
- Responsive mobile interface.
- Consistent application theme.
- Custom application launcher icon.
- Android and iOS branding assets.

---

## Technology Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform mobile development |
| Dart | Application programming language |
| Firebase Authentication | Administrator authentication |
| Cloud Firestore | Employee data storage |
| Material UI | User interface components |
| Android Studio | Android emulator and development |
| Xcode | iOS build and signing |
| Visual Studio Code | Code editor |
| Git | Version control |
| GitHub | Source code repository |
| Flutter Launcher Icons | Application icon generation |

### Development Environment

- Flutter SDK: 3.50.0
- Dart SDK: 3.14.0
- Git: 2.50.1
- Development OS: macOS

---

## Application Architecture

The application follows a feature-oriented structure that separates authentication, employee management, shared components, application configuration, and Firebase services.

Main project structure:

```text
employee_management_app/
│
├── android/
│   └── app/
│       └── src/
│           └── main/
│               └── res/
│                   └── mipmap-*/
│
├── assets/
│   └── images/
│       └── app_icon.png
│
├── ios/
│   └── Runner/
│       └── Assets.xcassets/
│           └── AppIcon.appiconset/
│
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   ├── routes/
│   │   ├── theme/
│   │   └── widgets/
│   │
│   ├── features/
│   │   ├── authentication/
│   │   ├── dashboard/
│   │   └── employees/
│   │
│   ├── services/
│   │   └── firebase_service.dart
│   │
│   ├── firebase_options.dart
│   └── main.dart
│
├── test/
│
├── pubspec.yaml
├── pubspec.lock
├── analysis_options.yaml
├── .gitignore
└── README.md
```

The application uses a centralized routing configuration and shared theme and UI components to support maintainability and consistency.

---

## Firebase Configuration

The application is connected to Firebase.

**Firebase project:** `employeemanagementapp-3cc5e`

Firebase services used:

### Firebase Authentication

Used to:
- Register administrator accounts.
- Authenticate administrators.
- Reset forgotten passwords.
- Manage authenticated sessions.

### Cloud Firestore

Used to:
- Retrieve employee records.
- Create employee records.
- Update employee information.
- Delete employee records.
- Search employee information.

Firebase is initialized through the generated `firebase_options.dart` configuration.

Application initialization uses:

```dart
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
```

Firebase configuration supports the Android and iOS platforms.

---

## Firestore Data Structure

The application reuses the existing Firestore database and employee collection.

**Collection:** `employees`

Employee document fields:

| Field | Description |
|---|---|
| `id` | Employee identifier |
| `name` | Employee full name |
| `email` | Employee email address |
| `department` | Employee department |
| `status` | Employee employment status |

Example employee document:

```json
{
  "id": "EMP001",
  "name": "John Doe",
  "email": "john.doe@example.com",
  "department": "Finance",
  "status": "Active"
}
```

The Firestore document ID matches the employee `id` field.

**Important:** The application is designed to reuse the existing Firestore collection and schema rather than creating duplicate collections.

---

## Application Screens

The application includes the following main screens:

1. Login Screen
2. Registration Screen
3. Forgot Password Screen
4. Dashboard / Employee Listing Screen
5. Add Employee Screen
6. Edit Employee Screen

The dashboard provides access to employee management functionality after successful administrator authentication.

---

## Getting Started

### Prerequisites

Install the following development tools:

- Flutter SDK
- Dart SDK
- Visual Studio Code or Android Studio
- Xcode for iOS development
- Android Studio Android SDK and emulator
- Git

Verify the Flutter installation:

```bash
flutter doctor
```

### Clone the Repository

```bash
git clone https://github.com/Jiyanenm/employee_management_mobile_app.git
```

Navigate into the project:

```bash
cd employee_management_mobile_app
```

### Install Dependencies

```bash
flutter pub get
```

### Firebase Setup

The project uses Firebase configuration files for the registered Android and iOS applications.

Ensure the appropriate Firebase configuration is available:

- `lib/firebase_options.dart`
- `android/app/google-services.json`
- `ios/Runner/GoogleService-Info.plist`

If setting up a new development environment, configure the Firebase applications and regenerate the FlutterFire configuration where necessary.

---

## Running the Application

### Check Connected Devices

```bash
flutter devices
```

### Run on iOS Simulator

```bash
flutter run -d "iPhone 17"
```

### Run on Android Emulator

```bash
flutter run -d emulator-5554
```

Replace the device identifier with the one returned by `flutter devices` if necessary.

---

## Testing and Code Quality

Flutter provides commands for static analysis and automated testing.

### Static Code Analysis

```bash
flutter analyze
```

### Run Automated Tests

```bash
flutter test
```

### Clean Build Files

```bash
flutter clean
flutter pub get
```

### Run the Application

```bash
flutter run
```

The employee management functionality has been exercised on the iOS simulator and a physical iPhone, including:

- Employee listing.
- Employee search.
- Adding employees.
- Editing employees.
- Deleting employees.

Android emulator testing is the next platform verification step.

---

## Application Branding and Icons

The application uses a custom launcher icon.

**Icon source:**

```text
assets/images/app_icon.png
```

The icon was generated and integrated into the Android and iOS application resources.

The project uses:

```yaml
dev_dependencies:
  flutter_launcher_icons: ^0.14.4

flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/images/app_icon.png"
  remove_alpha_ios: true
  min_sdk_android: 21
```

To regenerate launcher icons:

```bash
dart run flutter_launcher_icons
```

This generates the platform-specific launcher icon assets.

---

## Building Release Applications

### Android APK

Build a release APK:

```bash
flutter build apk --release
```

Generated APK:

```text
build/app/outputs/flutter-apk/app-release.apk
```

Install on a connected Android device:

```bash
flutter install
```

### Android Release Signing

Android release signing is configured in:

```text
android/app/build.gradle.kts
```

Signing credentials are stored locally in:

```text
android/key.properties
```

The signing keystore is stored outside the Git repository.

**Never commit the signing passwords, `key.properties`, or keystore file to GitHub.**

### iOS IPA

Build an iOS development IPA:

```bash
flutter build ipa --release --export-method development
```

Generated IPA files are located in:

```text
build/ios/ipa/
```

The iOS application uses Xcode code signing and provisioning profiles.

**Note:** Development signing with a free Apple Personal Team is intended for development testing on provisioned devices. App Store and TestFlight distribution require an eligible Apple Developer Program membership and distribution signing configuration.

---

## Security Considerations

- Firebase Authentication is used for administrator authentication.
- Firestore Security Rules must restrict access to authorized users.
- Never commit passwords or private signing credentials.
- Keep Android signing credentials outside the source repository.
- Do not commit Firebase Admin SDK service-account credentials.
- Review Firestore access permissions before production deployment.

Firebase client configuration files are required by the mobile application and should not be confused with private Firebase Admin SDK credentials.

---

## Future Improvements

Planned improvements and development activities include:

- Complete Android emulator functional verification.
- Expand automated Flutter UI testing.
- Integrate the existing automation framework.
- Improve application test coverage.
- Add further dashboard reporting capabilities.
- Prepare production-ready Android and iOS distribution builds.

---

## Author

**Nkosinathi Michael Jiyane**

Technical Applications Specialist | Software Quality Engineering | Mobile Application Development

GitHub: https://github.com/Jiyanenm

Portfolio: https://mypersonalportfolio-main.vercel.app

---

## Project Status

The initial Flutter mobile application has been implemented with Firebase Authentication, Firestore employee management, custom authentication screens, dashboard functionality, and custom Android and iOS launcher icons.

Development and platform verification are ongoing.

**Built with Flutter and Firebase.**
