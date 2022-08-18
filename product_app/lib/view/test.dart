class A {
  // ignore: prefer_typing_uninitialized_variables
  var a;
}

class B extends A {
  void printer() {
    B b = B();
    // ignore: avoid_print
    print(b.a);
  }
}
