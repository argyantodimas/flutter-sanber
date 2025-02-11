bool checkIsThisWahyu(bool bool){
    return bool;
}

void main(){
    var isThisWahyu = true;

    // if(isThisWahyu){
    //     print("wahyu");
    // }else{
    //     print("bukan");
    // }
    isThisWahyu ? print("wahyu") : print("bukan");
    print(checkIsThisWahyu(isThisWahyu) ? "wahyu" : "bukan");

    var mood = "happy";
    if ( mood == "happy" ) {
        print("hari ini aku bahagia!");
    }

    var minimarketStatus = "open";
    var telur = "soldout";
    var buah = "soldout";
    if (minimarketStatus == "open") {
        print("saya akan membeli telur dan buah");
        if (telur == "soldout" || buah == "soldout") {
        print("belanjaan saya tidak lengkap");
        } else if (telur == "soldout") {
        print("telur habis");
        } else if (buah == "soldout") {
        print("buah habis");
        }
    } else {
        print("minimarket tutup, saya pulang lagi");
    }

    //switch case
    var buttonPushed = 1;
    switch(buttonPushed) {
        case 1:   { print('matikan TV!'); break; }
        case 2:   { print('turunkan volume TV!'); break; }
        case 3:   { print('tingkatkan volume TV!'); break; }
        case 4:   { print('matikan suara TV!'); break; }
        default:  { print('Tidak terjadi apa-apa'); }}
    }
