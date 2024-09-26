// No. 1: Function teriak()
String teriak() {
  return "Halo Sanbers!";
}

// No. 2: Function kalikan()
int kalikan(int num1, int num2) {
  return num1 * num2;
}

// No. 3: Function introduce()
String introduce(String name, int age, String address, String hobby) {
  return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
}

// No. 4: Function faktorial
int faktorial(int num) {
  if (num <= 0) {
    return 1;
  } else {
    int hasil = 1;
    for (int i = num; i > 0; i--) {
      hasil *= i;
    }
    return hasil;
  }
}

void main() {
  // Memanggil function teriak
  print(teriak());

  // Memanggil function kalikan
  int num1 = 12;
  int num2 = 4;
  print(kalikan(num1, num2)); // Output: 48

  // Memanggil function introduce
  String name = "Agus";
  int age = 30;
  String address = "Jln. Malioboro, Yogyakarta";
  String hobby = "Gaming";
  print(introduce(name, age, address, hobby));

  // Memanggil function faktorial
  print(faktorial(6)); // Output: 720
}
