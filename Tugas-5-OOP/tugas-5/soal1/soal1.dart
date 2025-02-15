import 'segitiga.dart';

void main(List<String> args){
  //double setengah = 0.5;
  double alas = 20.0;
  double tinggi = 30.0;
  Segitiga segitiga = Segitiga(alas, tinggi);
  print(segitiga.luasSegitiga());
}
