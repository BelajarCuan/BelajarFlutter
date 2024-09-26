// No. 1: Looping While
void main() {
  // Looping pertama
  print("LOOPING PERTAMA");
  int i = 2;
  while (i <= 20) {
    print("$i - I love coding");
    i += 2;
  }

  // Looping kedua
  print("LOOPING KEDUA");
  int j = 20;
  while (j >= 2) {
    print("$j - I will become a mobile developer");
    j -= 2;
  }

  // No. 2: Looping menggunakan for
  print("\nSYARAT LOOPING");
  for (int k = 1; k <= 20; k++) {
    if (k % 2 == 1 && k % 3 == 0) {
      print("$k - I Love Coding");
    } else if (k % 2 == 1) {
      print("$k - Santai");
    } else {
      print("$k - Berkualitas");
    }
  }

  // No. 3: Membuat Persegi Panjang #
  print("\nPERSEGI PANJANG");
  for (int row = 1; row <= 4; row++) {
    print("########");
  }

  // No. 4: Membuat Tangga
  print("\nTANGGA");
  for (int row = 1; row <= 7; row++) {
    print("#" * row);
  }
}
