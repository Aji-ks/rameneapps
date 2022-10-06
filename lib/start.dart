import 'package:flutter/material.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/login.dart';
import 'package:rameneapps/signup.dart';

class Start1 extends StatefulWidget {
  const Start1({Key? key}) : super(key: key);

  @override
  State<Start1> createState() => _Start1State();
}

class _Start1State extends State<Start1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/Group5.png',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(top: 10, bottom: 5)),
              Image.asset(
                'assets/Group12.png',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              const Text(
                'All your\nfavourite ramen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              const Text(
                'Delicious as is or tossed with your\nfavorite ingredients',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // DetailPage adalah halaman yang dituju 
                    MaterialPageRoute(
                      builder: (context) => Login(
                      )
                    ),
                  );
                },
                child: const Text("Login",
                    style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 16,
                        color: Color.fromARGB(255, 252, 252, 252))),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 227, 173, 27),
                    minimumSize: const Size.fromHeight(35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // DetailPage adalah halaman yang dituju 
                    MaterialPageRoute(
                      builder: (context) => Signup(
                      )
                    ),
                  );
                },
                child: const Text("Sign Up",
                    style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 16,
                        color: Colors.black)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size.fromHeight(35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ]),
      ),
    );
  }
}
