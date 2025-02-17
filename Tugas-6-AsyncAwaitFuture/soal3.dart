import "dart:async";

line(){
  print("Pernahkan kau merasa");
}

line2(){
  print("Pernahkan kau merasa");
}

line3(){
  print("Pernahkan kau merasa");
}

line4(){
  print("Hatimau hampa, pernahkan kau merasa, hatimu kosong");
}

Future<void> main(List<String> args) async {
  print("Ready. Sing");
  await Future.delayed(Duration(milliseconds: 5000));
  line();
  await Future.delayed(Duration(milliseconds: 3000));
  line2();
  await Future.delayed(Duration(milliseconds: 2000));
  line3();
  await Future.delayed(Duration(milliseconds: 1000));
  line4();
}
