

void main() {
    //list
    List<int> list = [23,24,25];
    print(list[0]);//23
    print(list[1]);//24
    print(list[2]);//25

    var names = [];
    names.add('Rafiyandi');
    names.add('Salamon');
    names.add('Joko');
    print(names);

    var names2 = [];
    names2.add('Rafiyandi');
    names2.add('Salamon');
    names2.add('Joko');
    names2[0] = 'Joni';
    print(names2);

    var names3 = ['Rafiyandi','Salamon','Joko'];
    print(names3[0]);

    var names4 = ['Rafiyandi','Salamon','Joko'];
    names4.removeAt(2);
    print(names4);

    //map
    //Map<TipeKey, TipeValue> namaVariable = {};
    //var namaVariable = Map<TipeKey, TipeValue>();
    //var namaVariable = <TipeKey, TipeValue>{};

    Map<String, String> kota = {'jkt' : 'Jakarta', 'bdg' : 'Bandung', 'sby' : 'Surabaya'};
    print(kota['jkt']);
    print(kota['bdg']);
    print(kota['sby']);

    var biodata =<String,String>{}; //deklarasi Varibale
    biodata['nama'] = 'Rafiyandi';
    print(biodata['nama']);

    var biodata2 =<String,String>{};
    biodata2['nama'] = 'Rafiyandi';
    biodata2['city'] = 'Jakarta';
    biodata2['makanan'] = 'Ramen';
    print(biodata2['city']);
    print(biodata2['makanan']);
    print(biodata2);
    biodata2.remove('city');
    print(biodata2);

    //multidimensional list
    var arrayMulti = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];

    // Maka sebagai gambaran, indeks dari array tersebut adalah
    /*
    [
        [(0,0), (0,1), (0,2)],
        [(1,0), (1,1), (1,2)],
        [(2,0), (2,1), (2,2)]
    ]
    */
    print(arrayMulti[0][0]);// 1
    print(arrayMulti[1][0]);// 4
    print(arrayMulti[2][1]);// 8



    var perusahaan = ["bukalapak", "tokopedia", "blibli", "salestock"];
    print(perusahaan.contains("bukalapak"));

    var randomdata = [1,3,5,20,4,2];
    randomdata.sort((a, b)=> a.compareTo(b));
    print(randomdata);

    var randomdata2 = [1, 3, 5, 20, 4, 2];
    randomdata2.sort((a, b) => a.compareTo(b));
    print(randomdata2);
    var sumData2 = randomdata2.reduce((cur, next) => cur + next);
    print(sumData2);
    const intialValue2 = 10;
    //var currentValue = [1, 2, 3, 4, 5];
    var nextSum2 = randomdata2.fold<int>(intialValue2, (cur, next) => cur + next);
    print(nextSum2); //45

    List<Map<String, dynamic>> listUser = [
        {"nama": "bekasi", "umur": 240},
        {"nama": "boyolali", "umur": 200},
        {"nama": "jakarta", "umur": 100},
        {"nama": "surabaya", "umur": 50},
    ];
    var example = listUser.every((data) => data["umur"] >= 100);
    print(example); ///true

    var userYoung = listUser.where((data) => data["umur"] > 100);
    print(userYoung);
    var userFirstYoung = listUser.firstWhere((data) => data["umur"] < 200);
    print(userFirstYoung); /// {"nama": "jakarta", "umur": 100},
    var userSingle = listUser.singleWhere((data) => data["umur"] < 100);
    print(userSingle); /// error karena ada dua kondisi yang benar

    var dataTestCase = [1, 2, 3, 4, 10, 90];
    print(dataTestCase.take(2)); /// (1, 2)
    print(dataTestCase.skip(2)); /// (3, 4, 10, 90)

    var pairs = [[1, 2], ["a", "b"], [3, 4]];
    var flatmaps = pairs.expand((pair)=> pair);
    print(flatmaps);

    var comph = [1,2,3,4];
    var newCom = [for(var a in comph) "new ${a}"];

    List<int> myList2 = [];
    List<int> list2 = [1,2,3];
    myList2.add(1);
    myList2.addAll(list);
    myList2.forEach((bilangan)=>{
        print(bilangan)
    });
}
