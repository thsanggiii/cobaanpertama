import 'dart:io';

main() {
  print("PROGRAM MENGHITUNG LUAS LINGKARAN");
  final phi = 3.14;
  stdout.write("Masukkan Nilai r : ");
  int? r = int.parse(stdin.readLineSync()!);
  // Here ? and ! are for null safety
  double luaslingkaran = phi * r * r;
  print('Luas Lingkaran dengan jari-jari $r adalah $luaslingkaran cm^2');
}
