import 'main.dart';
import 'quiz.dart';

class Dart extends topics{
  @override
  void values(){
    this.topic="Dart";
    this.filename = "./dart.json";
  }

  Future<int> Questionmodel()async{
    Dart obj = new Dart();
    obj.values();

    Quiz data_obj = new Quiz();
    await data_obj.getData(obj.filename);
    return 0;
  }
}

class Gk extends topics{
  @override
  void values(){
    this.topic="GK";
    this.filename = "./GK.json";
  }

  Future<int> Questionmodel()async{
    Gk obj = new Gk();
    obj.values();

    Quiz data_obj = new Quiz();
     data_obj.getData(obj.filename);
    return 0;
  }
}
