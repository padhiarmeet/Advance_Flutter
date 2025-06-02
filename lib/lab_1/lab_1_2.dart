class Student{
  int rollNumber = 11;
  String name = 'hello';

  void displayDetails(){
    print('name of the student is - ${name}');
    print('rollNumber of the student is - ${rollNumber}');
  }
}

class Junior extends Student{

  void display(){
    print('hello from junior class');
  }
}

void main(){
  Junior js = Junior();
  js.displayDetails();
  js.display();
}