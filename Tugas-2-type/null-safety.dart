int? aNullableInt;
bool isEmpty(String? string) => string?.length == 0;
int nilaiInt(int? aNullableInt) {
    if (aNullableInt == null) {
        return 0;
    }
    return aNullableInt;
}

// Class segitiga {
//     //yakin tidak akan pernah berisi nilai null, tetapi kita tidak ingin melakukan inisialisasi
//     late int _alas;
//     late int _tinggi;

//     set alas(int value) => _alas = value;
//     set tinggi(int value) => _tinggi = value;
//     double luas(){
//         return (_alas * _tinggi) / 2;
//     }
// }

main() {
    isEmpty(null);

    // Pada null-safe Dart, tidak ada satupun variabel berikut berisi null
    var i = 42; // Inferred to be an int.
    //String name = getFileName();
    //final b = Foo();

    int? bilangan = null;

    String? name = "ada";
    print(name!.length); //dipaksa tidak null

    // var sg = Segitiga();
    // sg.alas = 5;
    // sg.tinggi = 10;
    // print(sg.luas());

    int b = aNullableInt ?? 0;
    // int b = aNullableInt!;
    print(b);

    double? d;
    //print(d.floor()); ini akan error
    //gunakan operator ? untuk dapat mengakses fungsi floor
    print(d?.floor());

    //collection
    var nameList = <String?>['Andrew', 'Anjan', 'Anya'];
    var nameSet = <String?>{'Andrew', 'Anjan', 'Anya'};
    var myApp = <String, int>{'satu': 1};
    var d2 = myApp['dua'];

    //int? value = <String, int>{'one': 1}['two'];
    int value = <String, int>{'one': 1}['one']!;
    print(value);
}
