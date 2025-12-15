### What i did today

### 1. Global Font Implementation

The correct font, **Poppins**, was identified and set as the default text style for the entire application theme using the `google_fonts` package.

### What i learned today

Understanding the role of the main files and folders is essential for any Flutter project:

- **`pubspec.yaml`**: This file manages project settings. It is crucial for configuration, as it lists all required external packages (like fonts), declares assets (images), and specifies the Flutter SDK version.
- **`pubspec.lock`**: This file is generated automatically. Its purpose is to track the exact version of every package used in the project. This ensures that all developers and build systems work with the same dependencies to prevent version conflicts.
- **`android/` and `ios/`**: These folders hold the native files and configuration needed to build and run the app specifically on **Android** and **iOS** devices, respectively.
- **`linux/`, `macos/`, and `windows/`**: These folders contain the necessary native boilerplate code and configuration to run the Flutter application as a standalone program on **desktop operating systems**.
