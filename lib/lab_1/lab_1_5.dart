import 'dart:io';

class Demo{
  static int counter = 0;
}
class Increment extends Demo{
  void incrementCounter(){
    int a = 0;
    print(Demo.counter++);
    print(Demo.counter++);
}
}

void main(){
  Increment i1 = Increment();
  i1.incrementCounter();
  i1.incrementCounter();
}