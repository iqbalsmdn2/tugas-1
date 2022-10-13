void main() {
  dartFunction();
  dartVariable();
  dartDataType();
}

void dartFunction() {
  print('-------------- Dart Function -------------');
  cetakAngka(8);
  print(cetakFungsiString());
  print(cetakFungsiString2());
}

void cetakAngka(int angka) {
  print('Angka yang dicetak adalah angka $angka');
}

String cetakFungsiString() {
  return 'Fungsi ini mengembalikan nilai String';
}

String cetakFungsiString2() => 'Fungsi ini mengembalikan nilai Sting';

void dartVariable() {
  print('------------- Dart Variable ------------');

  var name = 'zico alamsyah';
  print('Nilai awal variabel Name : $name');
  name = 'Ronald';
  print('Nilai baru variabel Name : $name');

  final gender = 'laki-laki';
  print('Jenis Kelamin : $gender');

  int? umur = 30;
  print('Umur : $umur');
}

void dartDataType() {
  print('------------ Dart Data Types -----------');

  int angkaInteger = 0;
  angkaInteger += 2;
  print('Nilai Integer : $angkaInteger');

  String variabelString = ' Univ. Mercubuana';
  print('ini adalah fungsi interpolasi: $variabelString');

  List dataList = ['zico', 'ronald', 'andre'];
  print('Jumlah data array : ');
  print(dataList.length);

  print('index ke-0: ');
  print(dataList[0]);

  print('index ke-2: ');
  print(dataList[2]);
}