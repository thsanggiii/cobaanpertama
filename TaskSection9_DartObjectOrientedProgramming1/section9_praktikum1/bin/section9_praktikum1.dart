class Hewan {
  var berat = 20;
}
class Mobil extends Hewan{
  var maxMuatan = 100 ;
  var kapasitas = 5;
  var muatan = ['kijang', 'gajah', 'jerapah', 'sapi', 'lama'];
  void tambahMuatan (){
    if (muatan.length < kapasitas) {
      muatan.add('kambing');
    } else {
      print('Maaf telah melebihi kapasitas');
    }
    // print('Masukkan Nilai Muatan : ');
    // var muatan = [int.tryParse(stdin.readLineSync()?? '0')?? 0];
    // if () {
    //   var muatan = [int.tryParse(stdin.readLineSync()?? '0')?? 0];
    //   print(muatan);
    // }
    // for(int muatan, i = 0, j = 1; j<30; muatan = i, i = j, j = i + muatan) { 
    //   print('${j}'); 
    // }
  }
  void totalMuatan (){
    print('---------------------------------------------');
    print('total seluruh muatan hewan yaitu : ');
    var totalMuatan = Hewan();
    print(muatan.length * totalMuatan.berat);
  }
}
void main(List<String> arguments) {
  var h1 = Mobil();
  print('---------------------------------------------');
  print('daftar hewan yang berada di dalam Mobil : ');
  print(h1.muatan);
  print('---------------------------------------------');
  print('user menambahkan 1 hewan : ');
  h1.tambahMuatan();
  h1.totalMuatan();
}