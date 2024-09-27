import 'lingkaran.dart';

void main(List<String?> args) {
  var lingkaran = Lingkaran();
  lingkaran.setRuas(-7);
  print('Ruas Lingkaran: ${lingkaran.getRuas()}');
  print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
}
