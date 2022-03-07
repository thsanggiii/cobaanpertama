import "dart:io";

void main() {
  print('--------------------------');
  print('Program Diagonal Angka');
  print('--------------------------');
  print('Masukkan Nilai : ');
  int tinggi = int.tryParse(stdin.readLineSync()?? '0')?? 0;
  print('--------------------------');
  print('Hasil :');
  diagonal(tinggi);
}

void diagonal(int input) {
  for (var i = 1; i <= input; i++) {
    String bintang = '';
    for (var j = 1; j <= i; j++) {
      if (j == i) {
        bintang += i.toString();
      } else {
        bintang += " ";
      }
    }
    print(bintang);
  }
}