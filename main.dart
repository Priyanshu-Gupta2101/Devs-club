import 'dart:io';
import 'extension.dart';

void main() async {
  choices();

}
Future<void> choices() async {
  print("\n\t!!! Welcome to The QUIZ !!!");
  print("Enter the Quiz topic ( Dart | GK | Exit )");
  String names = stdin.readLineSync()!;
  switch(names.toLowerCase()){
    case 'dart':
    Dart obj = new Dart();
    await obj.Questionmodel();
    break;

  case 'gk':
    Gk obj = new Gk();
    await obj.Questionmodel();
    break;

  case 'exit':
    print("Thank you for taking the Quiz");
    exit(0);

  default:
    print("Invalid Input");
    break;

  }

}


abstract class topics{
  String topic = '';
  String filename = '';

  void values();
}



