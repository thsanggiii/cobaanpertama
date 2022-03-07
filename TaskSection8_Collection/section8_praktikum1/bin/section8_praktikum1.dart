import 'dart:io';
//deklarasi fungsi soalLatihan
Future<List<int>>soalLatihan(List<int> listdata, int pengali) async{
  await Future.delayed(
    //memberi durasi output untuk ditampilkan
    Duration(seconds: 5),
    (){
      //perulangan untuk menghitung list data dengan pengali yang diinputkan
      for (var i = 0; i < listdata.length; i++) {
        listdata[i] *= pengali;
      }
    },
  );
  //mengembalikan nilai hasil
  return await listdata;
}
  void main(List<String> arguments) async{
    print('Masukkan angka untuk pengali : ');
    //menerima inputan user
    var pengali = int.tryParse(stdin.readLineSync()?? '0')?? 0;
    print('Hasil setelah di kali oleh pengali : ');
    //memanggil fungsi soalLatihan beserta parameternya
    var result = await soalLatihan([1, 3, 5, 2, 1], pengali);
    for (var item in result) {
      print(item);
    }
}
