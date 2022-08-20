import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'main.dart';

class Quiz{
  int score = 0;
  int total = 0;
  int n = 0;
  List data = [];
  int length = 0;
  Future<int> getData(String fileName) async {
    var data = [];
    await File(fileName).readAsString().then((String contents) {data = json.decode(contents);});
    this.data = data;
    this.length = data.length;
    this.quiz();
    return 0;
  }

  void quiz(){
    final random = Random();
    List<String> sol = [];
    for (int i = 0; i < 4; i++) {
      int index = random.nextInt(this.data.length);
      var options = this.data[index]["options"];
      List answer = this.data[index]["Answer"];
      total += answer.length*4;
      print("\nQ${i+1}} ${this.data[index]['Question']}");
      print("a. ${options["a"]}\nb. ${options["b"]}\nc. ${options["c"]}\nd. ${options["d"]}");
      print("Enter your answer(s): ");
      sol = stdin.readLineSync()!.trim().toLowerCase().split('\n');

      for (int j = 0; j < answer.length; j++) {
        if(sol[j] == answer[j])
        {
          print("\u2705  Correct Answer \u2705");
          this.score += 4;
        } else{
          print("\u274c Incorrect Answer \u274c");
          this.score -= 1;
        }
      }  
      this.data.removeAt(index);
    }
    print("Your Score is $score/$total");
    print("\nDo you want to continue, if so type continue");
    String? choice = stdin.readLineSync()?.toLowerCase();
    switch(choice){
      case 'continue':
      choices();
      break;

      default:
      print("Thank you for attending the quiz");
      break;
    }
  }
}