void main(){
  var networkData={
    1:'string1',
    2:'string2',
    3:'string3',
  };
  
  myDataList(){
    return networkData.entries.map((e){
      return e.key;
    }).toList();
  }
  
  mySortDataList()=>networkData.entries.map((e)=>e.value).toList();
  
  print(myDataList());
  print(mySortDataList());
}