class Segitiga {
  double setengah = 0.5;
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  double hitungLuas() {
    return setengah * alas * tinggi;
  }
}

void main(List<String> args) {
  var segitiga = Segitiga(20.5, 30.0);
  print('Luas Segitiga: ${segitiga.hitungLuas()}');
}
