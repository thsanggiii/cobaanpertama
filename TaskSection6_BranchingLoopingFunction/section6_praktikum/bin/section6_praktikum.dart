import 'dart:io';

void main() {
  print('PROGRAM SEDERHANA IF - ELSE IF');
  print('Masukkan Nilai : ');
  String inputAngka = stdin.readLineSync() ?? '';
  int a = int.tryParse(inputAngka) ?? 0;
  //memanggil fungsi perulangan
  print (hasil(a));
}

//membuat fungsi baru agar bisa me return karakter
String hasil (int a){
if (a > 70) {
      return "A";
    } else if (a > 40) {
      return "B";
    } else if (a > 0) {
      return "C";
    } else {
      return "";
    }
}
