# 🧱 Flutter Clean Architecture Starter

A boilerplate Flutter project following **Clean Architecture** principles, integrated with **MVVM**, **BLoC**, and **Dio** for scalable, testable, and maintainable development.

> 🚀 Use this as a base for your next Flutter app — designed for speed, structure, and productivity.

---

## 📁 Project Structure

```
lib/
│
├── core/                  # Common app-level logic, constants, themes, and services
│   ├── common/            # Strings, colors, styles, enums, etc.
│   ├── services/          # Connectivity, local storage, notifications, etc.
│   └── network/           # Dio setup, interceptors, API clients
│
├── features/              # Feature-based module structure
│   └── [feature_name]/    
│       ├── data/          # Models, repositories, data sources
│       ├── domain/        # Use cases (business logic)
│       └── presentation/  # UI, BLoC/ViewModel, widgets
│
└── main.dart              # App entry point
```

This approach ensures **separation of concerns**, **testability**, and **scalability**.

---

## 🧰 Tech Stack

- ✅ **Flutter**
- ✅ **BLoC** – predictable state management
- ✅ **MVVM** – separates UI from business logic
- ✅ **Dio** – powerful HTTP client
- ✅ **Clean Architecture** – layered structure for maintainable code
- ✅ **Connectivity Plus** – for real-time network status
- ✅ **Shared Preferences / Hive** – for local persistence

---

## 🥪 Testing

Cleanly separated layers make writing **unit**, **widget**, and **integration tests** easier.

You can add tests under:
```
test/
├── core/
├── features/
│   └── [feature_name]_test.dart
```

---

## 🚀 Getting Started

1. **Clone the repository**
```bash
git clone https://github.com/your-username/flutter-clean-architecture-starter.git
cd flutter-clean-architecture-starter
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run
```

---

## 📦 Features You Can Add

- Firebase integration (Analytics, Crashlytics)
- CI/CD via GitHub Actions or Codemagic
- App theming & localization
- Push notifications

---

## 🙌 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you’d like to change.

---

## 📄 License

This project is [MIT](LICENSE) licensed.

---

## ✨ Created by [Faiz](https://github.com/faizatflutter)

> Crafting scalable Flutter apps with love and clean code.

