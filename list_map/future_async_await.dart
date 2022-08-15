import 'package:http/http.dart' as http;

Future myData()async{
  var data=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  return data;
}

void main()async{
  var data=await myData();
  print(data.body);
}