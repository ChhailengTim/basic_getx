void main(){
  var mapObj={
    'name':'LENG',
    'age':23,
    'country':'Cambodia',
  };
  
  var newObj=mapObj.entries.map((entry){
    return entry;
  }).toList();
  print(newObj);
  
  var list=['eno',35,'KH'];
  print(list);
  
  for(var i=0;i<list.length;i++){
    print(list[i]);
  }
}