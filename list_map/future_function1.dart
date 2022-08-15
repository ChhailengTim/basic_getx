void main(){
  myFunction();
  myFunctionFuture();
}
Future myFunctionFuture(){
    return Future.delayed(Duration(seconds:2),()=>print('Late Hello'));
  }

myFunction(){
  print('Fast Hello');
}