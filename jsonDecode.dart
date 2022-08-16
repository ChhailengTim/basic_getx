import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{
  var res=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  final list=<Task>[];
  Task task=Task.fromJson(jsonDecode(res.body));
  print(task.body);
}

class Task{
  late String title;
  late String body;
  
  Task(this.title,this.body);
  
  Task.fromJson(Map<String,dynamic>json){
    title=json['title'];
    body=json['body'];
  }
}
