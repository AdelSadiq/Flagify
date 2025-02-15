
# **🌍 Flutter Country List App**  

A Flutter application that fetches and displays a list of countries using **GraphQL**, **BLoC**, and **Clean Architecture**.  

---

## **📌 Features**  

✅ **Fetch Countries** from a **GraphQL API**  
✅ **Display Country List** (Name, Emoji, Code)  
✅ **Search Functionality** 🔍 (Filter by name)  
✅ **Pull-to-Refresh** (Swipe down to reload data)  
✅ **Offline Support** using **Hive**  
✅ **BLoC for State Management**  
✅ **Dependency Injection (GetIt)**  
✅ **Error Handling & Loading Indicators**  

---

## **🚀 Tech Stack**  

- **Flutter** (Dart)  
- **GraphQL** (`graphql_flutter`)  
- **State Management** (`flutter_bloc`)  
- **Local Storage** (`Hive`)  
- **Dependency Injection** (`GetIt`)  

---

## **📂 Project Structure (Clean Architecture)**  

```
lib/
│── main.dart  
│── my_app.dart
│── core/  
│   ├── colors/colors.dart
│   ├── constants/
│   │   ├── error_constants.dart
│   │   ├── hive_box_keys.dart
│   ├── theme/theme.dart
│   ├── textstyle/textstyle.dart
│── data/
│   ├── core/
│   │   ├── client/graphql_repo.dart
│   │   ├── di/injectable.dart
│   │   ├── models/country_model.dart  
│   │   ├── failures/main_failures.dart
│   │   ├── sources/graphql_service.dart  
│   │   ├── query_constants.dart
│   ├── core/domain/country_service.dart
│   ├── core/infrastructure/country_impl.dart
│   ├── models/country_model/country_model.dart 
│── presentation/  
│   ├── home/
│   │   ├── application/
│   │   │   ├── home_bloc.dart
│   │   │   ├── home_event.dart
│   │   │   ├── home_state.dart
│   │   │   ├── home_utils.dart
│   │   ├── view/
│   │   │   ├── screen_home.dart
│   ├── splash_screen/splash_screen.dart  
│   ├── widgets/
│   │   ├── shimmer_container.dart
│   │   ├── widget_error_view.dart
│   │   ├── widget_search_bar.dart
```  

---

## **🔧 Installation & Setup**  

1️⃣ **Clone the Repository**  

```bash
git clone https://github.com/yourusername/flutter-country-app.git
cd flutter-country-app
```
  
2️⃣ **Install Dependencies**  

```bash
flutter pub get
```

3️⃣ **Run the App**  

```bash
flutter run
```

---

## **🛠️ Dependencies Used**  

```yaml
dependencies:
  flutter:
    sdk: flutter
  get_it: ^8.0.3
  injectable: ^2.5.0
  path_provider: ^2.1.5
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  flutter_bloc: ^9.0.0
  json_annotation: ^4.9.0
  freezed_annotation: ^2.2.0
  graphql_flutter: ^5.1.2
  dartz: ^0.10.1
  internet_connection_checker: ^3.0.1
  google_fonts: ^6.2.1
  shimmer: ^3.0.0
  pull_to_refresh: ^2.0.0
```
