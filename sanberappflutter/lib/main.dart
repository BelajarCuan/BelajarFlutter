import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  counter--;
                });
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter: $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
  Analisis Setstate dan Apa Kegunaannya :

  Fungsi `setState()` ini kayak kita ngasih tahu aplikasi bahwa ada yang berubah di dalamnya,
  dan aplikasi perlu diperbarui supaya tampilannya sesuai sama perubahan itu.

  Di contoh di atas, kita pakai `setState()` setiap kali kita pencet tombol tambah (+) atau 
  tombol kurang (-). Nah, ketika kita pencet salah satu tombol itu, nilai `counter` berubah.
  Tapi perubahan ini gak akan langsung terlihat di layar kalau kita gak panggil `setState()`.

  Jadi, `setState()` itu tugasnya memberi tahu aplikasi untuk ngubah tampilan sesuai dengan
  perubahan nilai `counter`. Misalnya:
  - Kalau kita tekan tombol kurang (-), nilai `counter` berkurang 1, dan tampilan di layar
    akan langsung menampilkan angka yang baru.
  - Kalau kita tekan tombol tambah (+), nilai `counter` bertambah 1, dan tampilan di layar
    juga langsung menunjukkan angka yang bertambah itu.

  Jadi intinya, tanpa `setState()`, meskipun nilai `counter` berubah di dalam logika program,
  tampilannya gak bakal berubah. `setState()` ini yang bikin perubahan di logika program
  langsung kelihatan di layar aplikasi.
*/