import 'dart:io';

void main(List<String> arguments) {
  print('----------------------------------');
  print('PROGRAM AZIMUTH');
  print('Masukkan Angka : ');
  int input = int.tryParse(stdin.readLineSync()?? '0')?? 0;
  print('----------------------------------');
  if (input > 180) {
    input -= 180;
    print(input);    
  } else if (input < 180) {
    input += 180;
    print(input);
  } else if (input <= 0) {
    input *= 0;
    print(input);
  } else if (input >= 360) {
    input *= 0;
    // return 0;
  } else {
    print('Inputan bukan berupa angka.');
  }
  print('----------------------------------');
}
