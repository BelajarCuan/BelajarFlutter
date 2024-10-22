import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/image/login_page.png'), // Gambar login
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                label: "Email",
              ),
              CustomTextFormField(
                label: "Password",
                obscureText: true, // Untuk menutupi input password
                suffixIcon: Icon(Icons
                    .visibility_off), // Ikon untuk menunjukkan/menyembunyikan password
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Tambahkan navigasi untuk fitur lupa password
                  },
                  child: Text(
                    'Lupa password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Color(0xff3498DB),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Masuk',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffCCCCCC),
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau masuk menggunakan',
                      style: TextStyle(color: Color(0xffCCCCCC)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffCCCCCC),
                      height: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Material(
                color: Colors.white,
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon/icon_google.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Google',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun?'),
                  TextButton(
                    onPressed: () {
                      // Tambahkan navigasi untuk halaman pendaftaran
                    },
                    child: Text(
                      'Mendaftar sekarang',
                      style: TextStyle(color: Color(0xff3498DB)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      this.obscureText = false,
      this.suffixIcon});
  final String label;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(color: Color(0xffCCCCCC)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffCCCCCC)),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
