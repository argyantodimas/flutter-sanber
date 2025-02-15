

class Buku {
    String judul;
    String pengarang;
    String isbn;
    int jumlah;

    Buku(this.judul, this.pengarang, this.isbn, this.jumlah);

    void tambahBuku(){}
    void hapusBuku(){}
    void editBuku(){}
    void tampilkanInfo(){
        print("Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah");
    }
}
class BukuAnggota {}

Buku buku1 = Buku("Pemrograman Dart", "John Doe", "9876543210", 3);

class Person {
  //private variable
  String _name = "";
  int _age = 0;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set name(String name){
    _name = name;
  }
  set age(int age){
    age > 0 ? _age = age : print("Age must be positive");
  }

  void printDetails(){
    print("Name: $_name, Age: $_age");
  }
}

class Media {
  String judul;
  String kategori;
  Media(this.judul, this.kategori);

  void tampilkanInfo(){
    print("Judul: $judul, Ketegori: $kategori");
  }
}

class Buku2 extends Media {
  String pengarang;
  String isbn;
  Buku2(this.pengarang, this.isbn, super.judul, super.kategori);

  void tampilkanInfoBuku(){
    print("Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Kategori: $kategori");
  }
}

class AudioVisual extends Media {
  String sutradara;
  int durasi;
  AudioVisual(this.sutradara, this.durasi, super.judul, super.kategori);

  void tampilkanInfoAV(){
    print("Judul: $judul, Sutradara: $sutradara, Durasi: $durasi, Kategori: $kategori");
  }
}

void main(){
  Person person = Person('Alice', 25);
  print(person.name);
  person.name = 'Bob';
  print(person.name);
  person.printDetails();
  person.age = 30;
  person.printDetails();
}
