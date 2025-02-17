import 'dart:async';

class Human {
  String name = "Nama Character One Piece";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 3));
    print("get data [done]");
    name = "Rafi";
  }
}

void main(List<String> args) async {
  var h = Human();
  print("Luffy");
  print("Zoro");
  print("Killer");
  print(h.name);
  await h.getName();
  print(h.name);
}
