class Student{
  int rollNumber;
  String name;

  Student(this.name,this.rollNumber);

  void displayDetails(){

    print('name of the student is - ${name}');
    print('rollNumber of the student is - ${rollNumber}');
  }
}

void main(){
  Student st  =Student('meet', 12);
  st.displayDetails();
}