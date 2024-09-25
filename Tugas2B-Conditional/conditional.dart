import 'dart:io';

void ternaryOperator() {
  stdout.write('Apakah Anda ingin menginstall aplikasi? (y/t): ');
  String? jawaban = stdin.readLineSync();

  // Menggunakan ternary operator
  String hasil = (jawaban == 'y' || jawaban == 'Y')
      ? 'Anda akan menginstall aplikasi dart'
      : 'Aborted';
  print(hasil);
}

void gameWerewolf() {
  stdout.write('Masukkan nama: ');
  String? nama = stdin.readLineSync();

  if (nama == null || nama.isEmpty) {
    print('Nama harus diisi!');
    return;
  }

  stdout.write('Masukkan peran (Penyihir, Guard, Werewolf): ');
  String? peran = stdin.readLineSync();

  if (peran == null || peran.isEmpty) {
    print('Halo $nama, Pilih peranmu untuk memulai game!');
  } else if (peran.toLowerCase() == 'penyihir') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print(
        'Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
  } else if (peran.toLowerCase() == 'guard') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print(
        'Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
  } else if (peran.toLowerCase() == 'werewolf') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print('Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!');
  } else {
    print('Peran tidak dikenal!');
  }
}

void quotesHarian() {
  stdout.write('Masukkan hari (1-7, Senin = 1): ');
  int? hari = int.parse(stdin.readLineSync()!);

  switch (hari) {
    case 1:
      print(
          'Senin: Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      break;
    case 2:
      print(
          'Selasa: Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
      break;
    case 3:
      print(
          'Rabu: Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
      break;
    case 4:
      print(
          'Kamis: Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      break;
    case 5:
      print('Jumat: Hidup tak selamanya tentang pacar.');
      break;
    case 6:
      print(
          'Sabtu: Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      break;
    case 7:
      print(
          'Minggu: Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
    default:
      print('Hari tidak valid!');
  }
}

void formatTanggal() {
  var tanggal = 21; // assign nilai variabel tanggal di sini (1-31)
  var bulan = 1; // assign nilai variabel bulan di sini (1-12)
  var tahun = 1945; // assign nilai variabel tahun di sini (1900-2200)

  String namaBulan;

  switch (bulan) {
    case 1:
      namaBulan = 'Januari';
      break;
    case 2:
      namaBulan = 'Februari';
      break;
    case 3:
      namaBulan = 'Maret';
      break;
    case 4:
      namaBulan = 'April';
      break;
    case 5:
      namaBulan = 'Mei';
      break;
    case 6:
      namaBulan = 'Juni';
      break;
    case 7:
      namaBulan = 'Juli';
      break;
    case 8:
      namaBulan = 'Agustus';
      break;
    case 9:
      namaBulan = 'September';
      break;
    case 10:
      namaBulan = 'Oktober';
      break;
    case 11:
      namaBulan = 'November';
      break;
    case 12:
      namaBulan = 'Desember';
      break;
    default:
      namaBulan = 'Bulan tidak valid';
  }

  print('$tanggal $namaBulan $tahun');
}

void main() {
  ternaryOperator();
  gameWerewolf();
  quotesHarian();
  formatTanggal();
}
