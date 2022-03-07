import 'dart:io';

void main(List<String> arguments) {
  print('----------------------------------');
  print('PROGRAM PENDETEKSI BILANGAN GANJIL');
  print('Masukkan Angka : ');
  //deklarasi variabel bool
  bool y;
  int x = int.tryParse(stdin.readLineSync()?? '0')?? 0;
  print('----------------------------------');
  if (y = x % 2 == 1) {
    print(y);
    print('bilangan $x adalah bilangan ganjil');    
  } else {
    print(y);
    print('bilangan $x adalah bilangan genap');
  }
  print('----------------------------------');
}
