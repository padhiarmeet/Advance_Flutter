class Student{
  void printDetails(){
    print('Hello from Student class');
  }
}

class Demo extends Student{
  @override
  void printDetails(){
    super.printDetails();
    print('Hello from Demo class');
  }
}

void main(){
  Demo d1 = Demo();
  d1.printDetails();
}