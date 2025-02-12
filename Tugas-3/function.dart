

void main(){
    tampilkan();
    print(kalikanDua(6));
    print(kalikan(5,6));
    tampilkanangka(5);
    //print(functionPerkalian(5,6));
}

tampilkan(){
    print("Hello Peserta Bootcamp");
}

kalikanDua(angka){
  return angka * 2;
}

kalikan(x, y){
  return x * y;
}

tampilkanangka(n1,{s1=45}){
  print(n1); //hasil akan 5 karena initialisasi 5 didalam value tampilkan
  print(s1); //hasil adalah 45 karena dari parameter diisi 45
}

// functionPerkalian(angka1, angka2){
//   return angka1 * angka2;
// }
