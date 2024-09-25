import 'dart:io';
// Tugas A: Tipe Data - String

// Soal No. 1: Membuat Kalimat
void soal1() {
  var word = 'Dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  // Menggabungkan kata menjadi kalimat
  var sentence = '$word $second $third $fourth $fifth $sixth $seventh';
  print(sentence); // Output: Dart is awesome and I love it!
}

// Soal No. 2: Mengurai Kalimat (Akses Karakter dalam String)
void soal2() {
  var sentence = "I am going to be Flutter Developer";

  var firstWord = sentence[0]; // I
  var secondWord = sentence[2] + sentence[3]; // am
  var thirdWord = sentence.substring(5, 10); // going
  var fourthWord = sentence.substring(11, 13); // to
  var fifthWord = sentence.substring(14, 16); // be
  var sixthWord = sentence.substring(17, 24); // Flutter
  var seventhWord = sentence.substring(25); // Developer

  print('First word: $firstWord');
  print('Second word: $secondWord');
  print('Third word: $thirdWord');
  print('Fourth word: $fourthWord');
  print('Fifth word: $fifthWord');
  print('Sixth word: $sixthWord');
  print('Seventh word: $seventhWord');
  // Output:
  // First word: I
  // Second word: am
  // Third word: going
  // Fourth word: to
  // Fifth word: be
  // Sixth word: Flutter
  // Seventh word: Developer
}

// Soal No. 3: Input Dinamis Nama Depan dan Nama Belakang

void soal3() {
  // Input nama depan
  stdout.write("Masukkan nama depan: ");
  String firstName = stdin.readLineSync()!;

  // Input nama belakang
  stdout.write("Masukkan nama belakang: ");
  String lastName = stdin.readLineSync()!;

  // Output nama lengkap
  print("Nama lengkap anda adalah: $firstName $lastName");
}

// Soal No. 4: Operasi Aritmatika dengan Variable
void soal4() {
  int a = 5;
  int b = 10;

  // Perkalian
  int hasilKali = a * b;
  print('$a * $b = $hasilKali'); // Output: 5 * 10 = 50

  // Penjumlahan
  int hasilTambah = a + b;
  print('$a + $b = $hasilTambah'); // Output: 5 + 10 = 15

  // Pengurangan
  int hasilKurang = b - a;
  print('$b - $a = $hasilKurang'); // Output: 10 - 5 = 5

  // Pembagian
  double hasilBagi = b / a;
  print('$b / $a = $hasilBagi'); // Output: 10 / 5 = 2.0
}

void main() {
  soal1();
  soal2();
  soal3();
  soal4();
}
