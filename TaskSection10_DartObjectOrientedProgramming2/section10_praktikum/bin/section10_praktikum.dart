class BangunRuang{
  var panjang = 12;
  var lebar = 10;
  var tinggi = 4;
  volume (){
    print('--------------------------------------');
    print('Program Penghitung Volume Bangun Ruang');
    print('--------------------------------------');
  }
}

class Kubus extends BangunRuang {
  @override
  volume() {
    var sisi = 4;
    var hasil = sisi*sisi*sisi;
    print('\nMenghitung Volume Kubus');
    print('Volume kubus dengan panjang sisi sebesar $sisi adalah $hasil');
  }
}

class Balok extends BangunRuang {
  @override
  volume() {
    var hasil = panjang*lebar*tinggi;
    print('\nMenghitung Volume Balok');
    print('Volume balok dengan panjang = $panjang, lebar = $lebar, tinggi = $tinggi adalah $hasil');
  }

}

void main(List<String> arguments) {
  var k0 = BangunRuang();
  k0.volume();
  var k1 = Kubus();
  k1.volume();
  var k2 = Balok();
  k2.volume();
}