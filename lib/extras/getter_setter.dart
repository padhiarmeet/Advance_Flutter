class Methematics{
  int num = 0;
  int num2 = 0;

  void set numrator(int val){
    num = val;
  }
  void set denominaotr(int val){
    num2 = val;
  }
  void get getNumarator => num;
  void get getDeniminator => num;
}

void main(){
  Methematics m1 = new Methematics();
  m1.numrator = 4;
  m1.denominaotr = 5;
}