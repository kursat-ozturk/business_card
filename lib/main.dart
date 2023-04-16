import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/kahve.jpg'),
                ),
                Text(
                  'FLUTTER COFFEE',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 40,
                    color: Colors.brown.shade300,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Bir fincan uzağınızda...',
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 200,
                  child: Divider(
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                const Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail,
                      color: Colors.white,
                    ),
                    title: Text(
                      'siparis@fcoffee.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+90 555 555 55 55',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
