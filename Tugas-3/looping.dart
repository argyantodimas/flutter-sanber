

void main (){
    var flag = 1;
    while(flag < 10) {
    print ("iterasi ke"+ flag.toString());
    flag++; // Mengubah nilai flag dengan menambahkan 1
    }

    var deret = 5;
    var jumlah = 0;
    while (deret > 0) {
        // Loop akan terus berjalan selama nilai deret masih di atas 0
        jumlah += deret; // Menambahkan nilai variable jumlah dengan angka deret
        deret--; // Mengubah nilai deret dengan mengurangi 1
        print('Jumlah saat ini: ' + jumlah.toString());
    }
    print(jumlah);


    for(var angka = 1; angka < 10; angka++) {
        print('Iterasi ke-' + angka.toString());
    }
    var jumlah2 = 0;
    for (var deret2 = 5; deret2 > 0; deret2--) {
        jumlah2 += deret2;
        print('Jumlah saat ini: ' + jumlah2.toString());
    }
    print('Jumlah terakhir: ' + jumlah2.toString());

    for (var deret3 = 0; deret3 < 10; deret3 += 2) {
        print('Iterasi dengan Increment counter 2: ' + deret3.toString());
    }
    print('-------------------------------');
    for (var deret4 = 15; deret4 > 0; deret4 -= 3) {
        print('Iterasi dengan Decrement counter : ' + deret4.toString());
    }

    // var flag = 1;
    // while (flag < 10) {
    //     // Loop akan terus berjalan, karena nilai flag tidak pernah berubah
    //     print('Iterasi ke-' + flag.toString());
    // }
}
