class Segitiga {
  final double setengah = 0.5;
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  double luasSegitiga(){
    return this.setengah * this.alas * this.tinggi;
  }
}
