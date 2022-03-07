import 'dart:io';

void main(List<String> arguments) {
  print('----------------------------------');
  print('PROGRAM JAM PASIR');
  print('Masukkan Nilai : ');
  int tinggi = int.tryParse(stdin.readLineSync()?? '0')?? 0;
  print('Masukkan Karakter : ');
  String? karakter = stdin.readLineSync();
  print('----------------------------------');
  print('Hasil : ');
  for (int a = 1; a <= tinggi; a++) {
    String value = "";
    for (int b=1; b <= a/2; b++) 
    {
      value += " ";
    }
    for (int c= tinggi; c >= a; c--) 
    {
      value += "$karakter ";
    }
    print('$value');
  }
  for (int x = 1; x <= tinggi; x++) {
    String value = "";
    for (int y=tinggi; y >= x*2; y--) 
    {
      value += " ";
    }
    for (int z=1; z <= x; z++) 
    {
      value += "$karakter ";
    }
    print('$value');
  }
}