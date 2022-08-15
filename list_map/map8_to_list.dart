void main(){
  var mapObj={
    'name':'LENG',
    'age':23,
    'country':'Cambodia',
  };
  var mapObj1={
    'name':'Dara',
    'age':53,
    'country':'China',
  };
  
  var list=[];
  
  list.add(mapObj1);
  list.add(mapObj);
  print(list);
  
  for(int i=0;i<list.length;i++){
    print(list[i]);
  }
  

}