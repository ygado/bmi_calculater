# 🧮 BMI Calculator App

تطبيق Flutter لحساب مؤشر كتلة الجسم (BMI) مع واجهة مستخدم بسيطة وحديثة، يحتوي على نظام تسجيل دخول وإنشاء حساب بالإضافة إلى حساب الـ BMI وعرض النتيجة بشكل منظم.

![Flutter](https://img.shields.io/badge/Flutter-3.16+-blue)
![Dart](https://img.shields.io/badge/Dart-3.2+-blue)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📱 About The App

**BMI Calculator App** هو تطبيق يساعد المستخدم على حساب مؤشر كتلة الجسم بسهولة عن طريق إدخال:

- النوع (ذكر / أنثى)
- الطول
- الوزن
- العمر

ثم يقوم التطبيق بحساب قيمة الـ BMI وعرض النتيجة النهائية.

---

# ✨ Features

- 🔐 Login Screen
- 📝 Register Screen
- 👤 اختيار النوع (Male / Female)
- 📏 تحديد الطول باستخدام Slider
- ⚖️ التحكم في الوزن والعمر
- 🧮 حساب مؤشر كتلة الجسم BMI
- 📊 عرض النتيجة النهائية
- 🎨 واجهات UI بسيطة ومنظمة
- ♻️ إعادة استخدام Components مشتركة

---

# 📸 Application Screens

| Screen | Description |
|--------|-------------|
| Login Screen | تسجيل الدخول |
| Register Screen | إنشاء حساب جديد |
| BMI Calculator | حساب مؤشر كتلة الجسم |
| Result Screen | عرض النتيجة |

---

# 🧠 BMI Formula

يعتمد التطبيق على معادلة مؤشر كتلة الجسم:

:contentReference[oaicite:0]{index=0}

---

# 🚀 Getting Started

## 1️⃣ Clone The Project

```bash
git clone https://github.com/your_username/bmi_calculator.git
```

---

## 2️⃣ Go To Project Folder

```bash
cd bmi_calculator
```

---

## 3️⃣ Install Packages

```bash
flutter pub get
```

---

## 4️⃣ Run The App

```bash
flutter run
```

---

# 📂 Project Structure

```bash
lib/
│
├── modules/
│   ├── bmi_calculate_views.dart
│   ├── bmi_result.dart
│   ├── home_views.dart
│   ├── login_views.dart
│   └── register_views.dart
│
├── shared/
│   └── component/
│       └── components.dart
│
└── main.dart
```

---

# 🛠️ Technologies Used

| Technology | Usage |
|------------|-------|
| Flutter | UI Framework |
| Dart | Programming Language |
| Material Design | UI Design |
| flutter_svg | SVG Images Support |

---

# 📦 Packages Used

```yaml
dependencies:
  flutter:
    sdk: flutter

  flutter_svg: ^2.0.10+1
```

---

# 🎯 Main Functionalities

## 🔐 Authentication

- Login Screen
- Register Screen
- Form Validation
- Password Visibility Toggle

---

## 🧮 BMI Calculation

يقوم التطبيق بحساب مؤشر كتلة الجسم باستخدام:

- الطول بالسنتيمتر
- الوزن بالكيلو جرام

ثم يعرض:

- النوع
- العمر
- قيمة الـ BMI

---

# 🎨 UI Components

تم إنشاء Components قابلة لإعادة الاستخدام مثل:

- Default AppBar
- Default Text
- Default TextFormField
- Default Material Button
- Reusable Containers

---

# 📷 Assets

```bash
assets/
└── images/
    ├── male.svg
    └── female.svg
```

---

# 🔥 Future Improvements

- ✅ استخدام Firebase Authentication
- ✅ حفظ بيانات المستخدم
- ✅ إضافة Dark Mode
- ✅ تحسين تصميم الـ UI
- ✅ إضافة تصنيف BMI
  - Underweight
  - Normal
  - Overweight
  - Obese

---

# 👨‍💻 Developed By

## Youssef Gado

- 💻 Flutter Developer
- 🚀 Passionate About Mobile Apps

---

# 🤝 Connect With Me

- GitHub: https://github.com/ygado

---

# ⭐ Support

إذا أعجبك المشروع لا تنسى وضع ⭐ على المشروع في GitHub
