class User{
  String name;
  int age;
  String location;
  
  User(this.name,this.age,this.location);
  
  Map<String, dynamic> toJson(){
    return {
      'name':name,
    'age':age,
    'location':location,
    };
  }
}

void main(){
  var user1=User('Dara',23,'Takeo');
  var user2=User('Kim',20,'Phnom Penh');
  var user3=User('Mey',22,'Prey veng');
  var list=[];
  
  list.add(user1.toJson());
  list.add(user2.toJson());
  list.add(user3.toJson());
  print(list);
  
  for (int i=0;i<list.length;i++){
    print(list[i]);
  }
}