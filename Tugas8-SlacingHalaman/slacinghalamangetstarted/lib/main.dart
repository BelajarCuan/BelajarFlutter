import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 86),
              width: double.infinity,
              height: 330,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_news.png')))),
          SizedBox(height: 37),
          Text(
            'Yuk, Membaca Bersama\nSanber News',
            style: GoogleFonts.arimo(fontSize: 21, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 21),
          Text(
            'Berita Terpercaya, Di ujung Jari Anda',
            style: TextStyle(fontSize: 15),
          ),
          Spacer(),
          SizedBox(
            height: 52,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Masuk',
                  style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 52, 152, 216),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                )),
          ),
          SizedBox(height: 21),
          SizedBox(
            height: 52,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Mendaftar',
                  style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff349BDB)),
                ),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Color(0xff349BDB)),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                )),
          ),
        ]),
      ),
    ));
  }
}
