
## Welcome to the Kagi's Kite news app, a Flutter Take-Home Assignment!

## The Project
This project is a simple news aggregator application built using Flutter. The core requirements are:

- Develop a Flutter application that displays news aggregated by Kagi's Kite news app.
- Implement category-based news feeds using predefined categories at [Kagi Kite JSON](https://kite.kagi.com/kite.json).
- Each category's articles and topics can be found at `https://kite.kagi.com/<category>.json`.
- Display news articles in a list view with metadata (title, source, date, etc.).
- Allow users to tap on articles to view a detailed summary.

This project tests the ability to develop Flutter applications while handling ambiguity and open-ended tasks.

## Inspiration
This project is modeled on Kite, Kagi's news application.(https://kite.kagi.com/) 
The goal is to create a fast and intuitive app that provides users with a quick overview of current events. The UX should be similar to Kite but can be improved based on your insights.

## Technical Requirements
- Use **Flutter** and **Dart** for implementation.
- Create a **clean, responsive UI** that works on both iOS and Android.
- Handle **network requests** and **errors** gracefully.
- Follow **best coding practices** and **clean architecture** principles.
- Include **unit tests** and **widget tests**.

### Out of Scope
The folowing features where considered for now in this project
- User authentication and settings.
- Filtering or customization of news articles.
- Support for video news.
- Adding external news sources outside of Kite.


## Getting Started

This project is designed to be a **category-based news app** that fetches and displays articles from an API in a smooth UI.

### Prerequisites
- Install **Flutter** on your local machine.
- Clone the repository:
  ```sh
  git clone https://github.com/ManuelAlex/kagi_kite_news_app.git
  ```
- Install dependencies:
  ```sh
  flutter pub get
  ```
- Run the app:
  ```sh
  flutter run
  ```
---

## Project Architecture
This project follows **clean architecture principles**, structured into four main layers:

### **1. Core**
Contains common utilities and error handling used throughout the app.
- **`utils/`** → Helper classes (e.g., `result.dart` for handling success and failure responses).
- **`errors/`** → Application-specific exceptions (e.g., `exceptions.dart`).

### **2. Data**
Handles data sources, both local and remote, and implements repositories.
- **`sources/`**
  - **`local/`** → Handles local storage (Hive used for persistence).
  - **`remote/`** → Fetches data via API calls (e.g., `news_categories_api.dart`).
- **`repositories/`** → Implements repository logic by fetching data from local or remote sources (e.g., `news_categories_repository.dart`).

### **3. Domain**
Contains business logic and core models.
- **`entities/`** → Core domain models (e.g., `news_categories.dart`).
- **`useCases/`** → Usecase for command handling(e.g., `news_categories_use_case.dart`).
- **`repositories/`** → Defines repository interfaces, implemented in the data layer.

### **4. Presentation**
Manages UI and state using providers, widgets, and pages.
- **`providers/`** → State management (e.g., `news_categories_provider.dart`).
- **`widgets/`** → Reusable UI components (e.g., `news_category_card.dart`, `news_category_list.dart`).
- **`pages/`** → Screens such as `home_page.dart` and `news_category_page.dart`.

---

## Folder Structure
```plaintext
lib/
 ├── core/
 │    ├── utils/
 │    │    ├── result.dart  
 │    ├── errors/
 │    │    ├── exceptions.dart  
 ├── data/
 │    ├── sources/
 │    │    ├── local/
 │    │    │    ├── news_categories_local_data_source.dart
 │    │    ├── remote/
 │    │    │    ├── news_categories_api.dart
 │    ├── repositories/
 │    │    ├── news_categories_repository.dart
 ├── domain/
 │    ├── entities/
 │    │    ├── news_categories.dart
 │    ├── repositories/
 │    │    ├── news_categories_repository.dart
 ├── presentation/
 │    ├── providers/
 │    │    ├── news_categories_provider.dart
 │    ├── widgets/
 │    │    ├── news_category_card.dart
 │    │    ├── news_category_list.dart
 │    ├── pages/
 │    │    ├── home_page.dart
 │    │    ├── news_category_page.dart
 ├── tests/                  # End-to-end Unit and widget tests
 ├── integration_tests/       # integration tests
 ├── tools/                   # Build commands, index generators, Dart fixes, etc.
```

---

## Development
### Git Workflow
- Clone this project using Git.
- Follow Flutter's linting rules ([Flutter Analysis Options](https://github.com/flutter/flutter/blob/master/analysis_options.yaml)).
- Override lint rules only when necessary.

### Data Layer Changes
If you modify the **data layer**, such as adding a new **DTO object**, follow these steps:
1. We use `dart_mappable` and `auto_mapper` for data serialization.
2. Run the following scripts:
   ```sh
   dart tools/builder.dart        # Generate necessary files
   dart tools/index_generator.dart # Generate barrel index files
   dart tools/analyze_fix.dart    # Run linting and auto-fixes
   ```
3. Run **unit tests** to ensure changes don't break existing functionality:
   - Right-click the test file and **Run Tests**.
   - If no test exists, **create one**.
   
### Repository Updates
If changes are made in the **repository layer**, run its corresponding **unit tests** to verify functionality remains intact.

### Lint Regulations
The linter rule abided by the project follows the rules listed here
(https://github.com/flutter/flutter/blob/master/analysis_options.yaml) 
A list of all available lint and their documentation is published at
(https://dart.dev/tools/linter-rules.)
these rules are documented on and in the same order as
the Dart Lint rules page to make maintenance easier
(https://github.com/dart-lang/linter/blob/master/example/all.yaml)


### State management
  The State management used is Riverpod

###  heads up
 The entry to the application is a bit different because of hive initialization to avoid futures in all providers, so data are seeded in the AppInitializer ready to be consumed  in the App as raw data. 
 integeration test provider container injection also benefits from this.
 
 Use the AppInitializer class to initialize any future class or other registers before app is run.

```dart
void main() async {
  // Initialize the application before running the widget tree,
  // ensuring dependencies like Hive are ready for synchronous use.
  final AppInitializer appInitializer = AppInitializer();
  await runApplication(appInitializer, const MyApp());
}
// Integration test set up
Future<void> pumpApp(WidgetTester tester, Widget widget) async {
  await tester.binding.setSurfaceSize(const Size(375, 812));
  final AppInitializer appInitializer = AppInitializer(); // iPhone 11 size
  await tester.runAsync(() async {
    await appInitializer.initialize();
  });

  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: appInitializer.providerContainer,
      child: widget,
    ),
  );
  await tester.pumpAndSettle();
}
```
### Test and Integration test
To run any test use flutter test and the file relative directory
eg. flutter test test/domain/usecases/fetch_news_categories_test.dart
To run integration test use flutter test and the files relative directory 
eg. flutter test integration_test/presentation/pages/home_page_integration_test.dart -d macos 

Note that this project current does not support github actions for the test to be run on each commit as it was out of scope, although will try and implement ment it to keep track of all test


## Screenshots

Here are some screenshots of the application:

### Home Page
![Home Page](assets/screen_shots/kite_app_home.png)

### News Category Deatails Page
![News Category Deatails](assets/screen_shots/kite_app_detail.png)

### Todays Event Page
![Home Page](assets/screen_shots/kite_app_event.png)

## Demo Video

https://github.com/user-attachments/assets/9a305819-6c64-4688-88e7-e6fde133c4a7

## Conclusion
This project demonstrates clean architecture principles in a Flutter news aggregator app. Follow the structure, adhere to best practices, and ensure code quality with tests. Feel free to contribute and enhance the project!

For any inquiries, reach out or submit an issue on the repository.

