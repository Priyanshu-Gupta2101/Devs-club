# CLI Quiz App in Dart
# Devs Club (Deprecated Needed to be updated)

Welcome to the CLI Quiz App in Dart! This simple Command Line Interface (CLI) quiz application allows users to take quizzes and test their knowledge on various topics.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Adding Questions](#adding-questions)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Installation

Ensure you have Dart SDK installed on your machine. If not, you can download it from [Dart SDK](https://dart.dev/get-dart).

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/dart-cli-quiz-app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd dart-cli-quiz-app
   ```

3. Run the application:

   ```bash
   dart quiz.dart
   ```

## Usage

- Launch the quiz app using the command mentioned in the installation section.
- Answer the questions displayed in the CLI by entering the corresponding option number.
- After completing the quiz, you'll receive your score.

## Adding Questions

To add or modify questions, open the `questions.dart` file. Follow the existing format to add new questions:

```dart
class Question {
  String question;
  List<String> options;
  int correctOption;

  Question(this.question, this.options, this.correctOption);
}

List<Question> questions = [
  Question(
    'What is the capital of France?',
    ['Berlin', 'Paris', 'Madrid', 'Rome'],
    1,
  ),
  // Add more questions as needed
];
```

## Customization

Feel free to customize the quiz app according to your preferences. You can modify the appearance, add more features, or change the quiz topics. Explore the `quiz.dart` file for potential enhancements.

## Contributing

We welcome contributions! If you have ideas for improvements or new features, feel free to fork the repository, make your changes, and submit a pull request.

## License

This CLI Quiz App in Dart is licensed under the [MIT License](LICENSE).
