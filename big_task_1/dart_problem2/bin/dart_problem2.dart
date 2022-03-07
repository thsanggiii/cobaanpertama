import 'dart:io';

void main(List<String> arguments) {
  print('----------------------------------');
  print('PROGRAM AZIMUTH');
  print('Masukkan Angka : ');
  int input = int.tryParse(stdin.readLineSync()?? '0')?? 0;
  print('----------------------------------');
  print('Hasil : ');
  if (input < 360 && input > 180) {
    input -= 180;
    print(input);    
  } else if (input > 0 && input < 180) {
    input += 180;
    print(input);
  } else if (input >= 360) {
    input *= 0;
    print(input);
  } else {
    input *= 0;
    print(input);
  }
  print('----------------------------------');
}
