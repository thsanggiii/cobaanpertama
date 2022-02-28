void main() async {
  print("PROGRAM SEDERHANA : PENGGABUNGAN KATA MENGGUNAKAN MAP");
  var biodata = {
    'nama' : 'Anggita Ajeng Karina',
    'nim' : '190533646898',
    'prodi' : 'S1 PTI 2019',
  };
  for(var key in biodata.keys){
    print(biodata[key]);
  }
}