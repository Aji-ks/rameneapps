import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rameneapps/constants.dart';
import 'package:rameneapps/home_page.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: const <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: semiBlack,
                      fontFamily: 'Poppins Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("Sign up to yout account",
                      style: TextStyle(
                        color: lightGrey,
                        fontSize: 17,
                        fontFamily: 'Poppins Light',
                      )),
                ],
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: null,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Email Address",
                hintText: "Email Address",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              controller: null,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                hintText: "Password",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    // DetailPage adalah halaman yang dituju 
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                      )
                    ),
                  );
              },
              child: const Text("Register",
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 18,
                  )),
              style: ElevatedButton.styleFrom(
                  primary: orangeAccent,
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: lightGrey,
                    )),
                SizedBox(width: 7),
                Text("",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: orangeAccent,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
