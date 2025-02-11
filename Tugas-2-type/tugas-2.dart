import 'dart:io';

//A. soal 1
String makeSentence(List<String> words){
    return words.join(" ");
}

//A. soal 2
List<String> splitSentence(String? sentence){
    if (sentence == null || sentence.trim().isEmpty) return [];
    return sentence.split(" ");
}

//A. soal 3
String? printFullname(String? namaDepan, String? namaBelakang){
    return ((namaDepan ?? "") + " " + (namaBelakang ?? "")).trim();
}

//B. soal 1
String installApp(String? isInstalled){
    return isInstalled?.toLowerCase() == "y" ? "anda akan menginstall aplikasi dart" : "aborted";
}
//B. soal 2
String checkNameAndRole(String? name, String? role){
    if(name == null || name.isEmpty) return "Nama harus diisi!";
    if(role == null || role.isEmpty) return "Pilih Peranmu untuk memulai game";
    if(["Penyihir", "Guard", "Werewolf"].contains(role)) return '''"Selamat datang di Dunia Werewolf, ${name ?? ""}" "Halo ${role ?? ""} ${name ?? ""}, kamu akan membantu melindungi temanmu dari serangan werewolf."''';
    return "";
}

//B. soal 3
String quoteOfTheDay(String? day){
    return switch(day?.toLowerCase()) {
        "senin" =>"Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.",
        "selasa" => "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.",
        "rabu" => "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.",
        "kamis" => "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.",
        "jumat" => "Hidup tak selamanya tentang pacar.",
        "sabtu" => "Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.",
        "minggu" => "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.",
        _ => ""
    };
}

//B. soal 4
enum Month { Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember }
Map<int, Month> monthName = {
    1: Month.Januari,
    2: Month.Februari,
    3: Month.Maret,
    4: Month.April,
    5: Month.Mei,
    6: Month.Juni,
    7: Month.Juli,
    8: Month.Agustus,
    9: Month.September,
    10: Month.Oktober,
    11: Month.November,
    12: Month.Desember,
};
String printDate(int? date, int? month, int year){
    if (date == null || month == null) return "Invalid date";
    if (year < 1900 || year > 2200) return "Invalid year";

    String dateString = "$year-${month.toString().padLeft(2, '0')}-${date.toString().padLeft(2, '0')}";
    DateTime? fullDate = DateTime.tryParse(dateString);
    if(fullDate == null) return "Invalid date";

    return "$date ${monthName[month].toString()} $year";
}

main(){
    //A. soal 1
    print("=========================A. soal 1=========================");
    var word = 'dart';
    var second = 'is';
    var third = 'awesome';
    var fourth = 'and';
    var fifth = 'I';
    var sixth = 'love';
    var seventh = 'it!';
    var sentenceSoal1 = makeSentence([word, second, third, fourth, fifth, sixth, seventh]);
    print(sentenceSoal1);

    //A. soal 2
    print("=========================A. soal 2=========================");
    var sentence = "I am going to be Flutter Developer";
    print("Full word: " + sentence);
    var words = splitSentence(sentence);
    var firstWord = words[0] ;
    var secondWord = words[1];
    var thirdWord = words[2];
    var fourthWord = words[3];
    var fifthWord = words[4];
    var sixthWord = words[5];
    var seventhWord = words[6];

    print('First Word: ' + firstWord);
    print('Second Word: ' + secondWord);
    print('Third Word: ' + thirdWord);
    print('Fourth Word: ' + fourthWord);
    print('Fifth Word: ' + fifthWord);
    print('Sixth Word: ' + sixthWord);
    print('Seventh Word: ' + seventhWord);

    //A. soal 3
    print("=========================A. soal 3=========================");
    print("masukan nama depan :");
    String? namaDepan = stdin.readLineSync()!;
    print("masukan nama belakang :");
    String? namaBelakang = stdin.readLineSync()!;

    print(printFullname(namaDepan, namaBelakang));

    //B. soal 1
    print("=========================B. soal 1=========================");
    print("install aplikasi ? (y/t)");
    String? isInstalled = stdin.readLineSync()!;
    print(installApp(isInstalled));

    print("=========================B. soal 2=========================");
    print("masukan nama :");
    String? name = stdin.readLineSync()!;
    print("masukan peran : (Penyihir/Guard/Werewolf)");
    String? role = stdin.readLineSync()!;

    print(checkNameAndRole(name, role));

    print("=========================B. soal 3=========================");
    print(quoteOfTheDay("selasa"));

    print("=========================B. soal 4=========================");
    var tanggal = 11;
    var bulan = 2;
    var tahun = 2025;
    print(printDate(tanggal, bulan, tahun));
}
