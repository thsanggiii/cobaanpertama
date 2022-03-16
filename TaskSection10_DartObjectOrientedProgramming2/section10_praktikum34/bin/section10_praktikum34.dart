import 'dart:io';

class Matematika {
  hasil () {
    print('selesai');

  }
}

class KPK extends Matematika {
  @override
  hasil() {
      print('---------------------------------------');
      print('Menghitung Nilai KPK dengan Bahasa Dart');
      print('---------------------------------------');
      print('Masukkan Nilai 1 : ');
      int x = int.tryParse(stdin.readLineSync()?? '0')?? 0;
      print('Masukkan Nilai 2 : ');
      int y = int.tryParse(stdin.readLineSync()?? '0')?? 0;
      // int hasil = y;
      // while (hasil%y != 0) {
      //   hasil = hasil + x;
      // }
      int hasil;
      if(x>y){
        hasil=x;
        x=y;
        y=hasil;
      }
      for (hasil = y; hasil % x != 0 || hasil % y !=0; hasil++) {
        return hasil;
      }
      print('KPK dari bilangan $x dan bilangan $y adalah $hasil');
  }
}
class FPB extends Matematika {
  @override
  hasil() {
      print('---------------------------------------');
      print('Menghitung Nilai FPB dengan Bahasa Dart');
      print('---------------------------------------');
      print('Masukkan Nilai 1 : ');
      int x = int.tryParse(stdin.readLineSync()?? '0')?? 0;
      print('Masukkan Nilai 2 : ');
      int y = int.tryParse(stdin.readLineSync()?? '0')?? 0;
      var a;
      print('Nilai FP : ');
      for (var z = 1; z <= x; z++) {
        if (x%z==0 && y%z==0) {
          a=z;
          var FP = [z];
          print(FP);
        }
      }
      print('Nilai FPB : $a');
  }
}

void main() {
  // var operation = FPB();
  // print(operation.hasil());
  
  var operation2 = KPK();
  print(operation2.hasil());
}
