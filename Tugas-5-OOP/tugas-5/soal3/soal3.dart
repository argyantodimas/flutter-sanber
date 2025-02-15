
import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';

void main(List<String> args){
  Titan titan = Titan();
  titan.setPowerPoint(1);
  print("Titan: ${titan.getPowerPoint()}");

  ArmorTitan ar = ArmorTitan();
  ar.setPowerPoint(2);
  print("Armor Titan: ${ar.getPowerPoint()}");
  print(ar.terjang());

  AttackTitan at = AttackTitan();
  at.setPowerPoint(3);
  print("Attack Titan: ${at.getPowerPoint()}");
  print(at.punch());

  BeastTitan bt = BeastTitan();
  bt.setPowerPoint(4);
  print("Beast Titan: ${bt.getPowerPoint()}");
  print(bt.lempar());

  Human human = Human();
  human.setPowerPoint(5);
  print("Human: ${human.getPowerPoint()}");
  print(human.killAlltitan());

}
