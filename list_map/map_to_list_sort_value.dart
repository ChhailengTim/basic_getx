void main(){
  Map map={3:'three',1:'one',4:'four',5:'five',2:'two'};
  var sortByKeyMap=Map.fromEntries(map.entries.toList()..sort((e1,e2)=>e1.value.compareTo(e2.value)));
  print(sortByKeyMap);
  print(sortByKeyMap.length);
}