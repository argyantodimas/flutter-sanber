

void main(){
    print("=========================1. Range=========================");
    print(range(10, 1));
    print(range(1, 10));

    print("=====================2. Range With Step====================");
    print(rangeWithStep(30, 23, 3));

    print("====================3. List Multidimensi===================");
    var input = [
        ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
        ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
        ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
        ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
    ];
    dataHandling(input);
}

range(int num1, int num2){
    List<int?> result = [];
    if(num1 > num2){
        for(var i = num1; i >= num2; i--){
            result.add(i);
        }
        return result;
    }
    for(var i = num1; i <= num2; i++){
        result.add(i);
    }
    return result;
}

rangeWithStep(int num1, int num2, int step){
    List<int?> result = [];
    if(num1 > num2){
        for(var i = num1; i >= num2; i -= step){
            result.add(i);
        }
        return result;
    }
    for(var i = num1; i <= num2; i += step){
        result.add(i);
    }
    return result;
}

dataHandling(List<List<String>> data){
    for (int i = 0; i < data.length; i++) {
        print("Nomor Id : ${data[i][0]}");
        print("Nama Lengkap : ${data[i][1]}");
        print("TTL : ${data[i][2]}");
        print("Hobby : ${data[i][3]}");
        if(i < data.length - 1) print("");
    }
}
