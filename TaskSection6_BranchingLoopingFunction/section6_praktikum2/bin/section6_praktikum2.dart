import 'dart:io';

void main() {
  print('====PROGRAM SEDERHANA PERHITUnGAN FAKTORIAL====');
  int faktorial = 1;
  print("Masukkan bilangan bulat : ");
  //mengambil input user
  int? n = int.parse(stdin.readLineSync()!);
  if (n < 0){
    print("Angka yang dimasukkan bukan bilangan bulat");
  } else {
    for (int i = 1; i <= n; i++){
      faktorial *= i;
    }
    //perintah untuk menampilkan output
    print("Hasil faktorial dari $n adalah $faktorial");
  }

}