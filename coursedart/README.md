# Dart Programming Course

A comprehensive Dart programming course with examples covering fundamental concepts, advanced features, and practical applications.

##  Project Structure

```
coursedart/
├── CHANGELOG.md              # Project version history
├── README.md                 # This file
├── analysis_options.yaml     # Dart static analysis rules
├── pubspec.yaml             # Project dependencies and metadata
├── pubspec.lock             # Locked dependency versions
├── info_dart.txt            # Dart information notes
├── NewCreateFile.txt        # New file templates
├── DirectoryCreate/         # Directory  created by dart 
├── c_native_code/           # C  native code 
│
├── lib/                     # Main Dart library code
│   ├── controlflow.dart     # Control flow statements
│   ├── data_types.dart      # Dart data types and variables
│   ├── funactions.dart      # Functions and methods
│   ├── generators.dart      # Generator functions
│   ├── loops.dart           # Looping constructs
│   ├── spread_operator.dart # Spread operator examples
│   ├── struct.dart          # Struct-like data structures
│   │
│   ├── oop_concepts/        # Object-Oriented Programming
│   │   ├── classes.dart
│   │   ├── inheritance.dart
│   │   ├── polymorphism.dart
│   │   └── encapsulation.dart
│   │
│   ├── files_and_directories/ # File I/O operations
│   │   ├── file_operations.dart
│   │   └── directory_management.dart
│   │
│   ├── serializ_and_deserializ/ # JSON serialization/deserialization
│   │   ├── json_serialize.dart
│   │   └── json_deserialize.dart
│   │
│   ├── libraries/           # Dart library usage
│   │   ├── built_in_libraries.dart
│   │   └── third_party_libs.dart
│   │
│   └── custom_dart_library/ # Custom library implementation
│       ├── export.dart      # Library exports
│       ├── user_library.dart # User-defined library
│       ├── user_model.dart  # Data models
│       ├── user_utilities.dart # Utility functions
│       └── main_md.dart     # Main library documentation
│


##  Course Content

### Fundamentals
- Data Types: Variables, constants, and type system
- Control Flow: if-else, switch-case statements
- Loops: for, while, do-while loops
- Functions: Basic functions, parameters, return types

### Advanced Concepts
- Object-Oriented Programming: Classes, inheritance, polymorphism
- Generators: Synchronous and asynchronous generators
- Spread Operator: Collection operators and spread syntax
- Serialization: JSON serialization and deserialization

### Practical Applications
- File Operations: Reading, writing, and managing files
- Directory Management: Creating, listing, and deleting directories
- Custom Libraries: Building reusable Dart libraries
- C Interop: Native code integration with C

## Getting Started

### Prerequisites
- Dart SDK 3.9.2 or higher
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)

### Installation
```bash
# Clone the repository
git clone https://github.com/WagdiSaif/DartCourse.git
cd coursedart

# Get dependencies
dart pub get