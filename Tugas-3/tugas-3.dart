import 'dart:io';

void main(){
    print("=========================A. soal 1=========================");
    loopingWhile();
    print("=========================A. soal 2=========================");
    loopingFor(20);
    print("=========================A. soal 3=========================");
    createRectangle();
    // createRectangle(length: 7, width: 3);
    print("=========================A. soal 4=========================");
    createLadder();
    print("=========================B. soal 1=========================");
    teriak();
    print("=========================B. soal 2=========================");
    print(kalikan(num1: 12, num2: 4));
    print("=========================B. soal 3=========================");
    print(introduce(name: "John Doe", age: 30, address: "Jakarta", hobby: "coding on dart"));
}

//A-1
void loopingWhile(){
    int loop1 = 0;
    int loop2 = 20;
    print("LOOPING PERTAMA");
    while(loop1 < 20){
        loop1 += 2;
        print("$loop1 - I love coding");
    }
    print("LOOPING KEDUA");
    while(loop2 > 0){
        loop2 -= 2;
        print("$loop2 - I will become a mobile developer");
    }
}
//A-2
void loopingFor(int length){
    for(var i = 1; i <= 20; i++){
        var text = i % 3 == 0 && i % 2 == 1 ? "I Love Coding" : i % 2 == 0 ? "Berkualitas" : "Santai";
        print("$i - $text");
    }
}
//A-3
void createRectangle({length = 8, width = 4}){
    String tag = "";
    for(var i = 0; i < width; i++){
        for(var j = 0; j < length; j++){
            tag += "#";
        }
        print(tag);
        tag = "";
    }
}
//A-4
void createLadder({String text = "#", int height = 7}){
    for(var i = 1; i <= height; i++){
        print(text * i);
    }
}
//B-1
void teriak(){
    print("Halo Sanbers!");
}
//B-2
int kalikan({num1 = 0, num2 = 0}){
    return num1 * num2;
}
//B-3
String introduce({String? name = null, int? age = null, String? address = null, String? hobby = null}){
    if(name == null) return "";
    if(age == null) return "";
    if(address == null) return "";
    if(hobby == null) return "";
    return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
}
