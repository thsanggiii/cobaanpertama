main() {
  print("PROGRAM MENGHITUNG LUAS LINGKARAN");
  final phi = 3.14;
  print("Hitunglah luas lingkaran sesuai dengan jari-jari berikut :");
  List<int> jari = [2, 4, 6, 8];
  print(jari);

  for (int r in jari){
    double luas = phi * r * r;
    print('Luas Lingkaran dengan jari-jari $r adalah $luas cm^2');
  }
}