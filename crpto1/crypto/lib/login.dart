import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crypto/View/navBar.dart';
import 'package:crypto/signup.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  void _loginNow() {
    // Cek apakah username dan password sesuai dengan yang ditentukan
    if (usernameController.text == 'sitorus' &&
        passwordController.text == '123456') {
      Fluttertoast.showToast(msg: "Login success!");
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return NavBar(); // Ganti dengan halaman tujuan setelah login
          },
        ),
      );
    } else {
      Fluttertoast.showToast(
          msg: "Login failed, username or password is incorrect");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Menggunakan title yang diberikan
        backgroundColor: Colors.yellow[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              "Login Account",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 40,
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              height: 40,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 150,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  if (usernameController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    _loginNow();
                  } else {
                    SnackBar snackBar = SnackBar(
                      content: const Text("Tidak Boleh Ada Yang Kosong"),
                      backgroundColor: Colors.redAccent,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot Password?',
                  style: TextStyle(color: Colors.grey)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text('Sign Up', style: TextStyle(fontSize: 13)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) {
                        return const SignUp();
                      }),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
