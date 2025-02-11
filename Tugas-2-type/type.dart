import 'dart:io';

void main(List<String> args){
    print("masukkan password");
    String?inputText = stdin.readLineSync()!;
    print("password:${inputText}");

    var name = "John";
    var angka = 12;
    var todayIsFriday = true;

    print("${name} ${angka} ${todayIsFriday}");
    print(angka == 14);
    print(angka <= 14);
    print(todayIsFriday != true);
    print(todayIsFriday || true);
    print(todayIsFriday && true);

    print(name[0]);

    int num1 = 10;
    double num2 = 10.50;
    print(num1 + num2);
    print(num.parse("10.01"));
    String str1 = "$num1";
    print("hello " + str1);

    //final -> saat runtime, const -> saat compile time
    final umur = 21;
    //umur = 22;
    // error: 'umur', a final variable, can only be set once
    const age = 21;
    // age = 22;
    //print(umur);
    //error: Constant variabels can't be assigned a value

    //final umur;
    //error: The final variable 'umur' must be initialized
    //const age;
    //error: Constant variabels 'age' must be initialized

    final waktu = new DateTime.now();
    print(waktu);




}
