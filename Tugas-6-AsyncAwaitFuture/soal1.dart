class Human {
  String name = "Nama Character One Piece";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 3)); // Jeda 3 detik
    name = "Rafi";
    print("get data [done]");
  }
}

void main(List<String> args) async {
  var h = Human();
  print("Luffy");
  print("Zorro");
  print("Killer");
  print(h.name);

  await h.getName();
  print(h.name); // Menampilkan "Rafi" setelah delay 3 detik
}
