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
}