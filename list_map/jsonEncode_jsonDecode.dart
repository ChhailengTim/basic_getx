import 'dart:convert';
main(){
  var map={
    'name':'chhaileg',
    'age':22,
  };
  
  String mapString=jsonEncode(map);
  var mapObject=jsonDecode(mapString);
  
  print(mapObject);
}
