import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rameneapps/constants.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/main.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Controller
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

//Variable
    var email = "ajibanget@gmail.com";
    var pwd = "ajib";

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
      )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: const <Widget>[
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: semiBlack,
                      fontFamily: 'Poppins Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("Login to yout account",
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
              controller: emailController,
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
              controller: pwdController,
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
            SizedBox(height: 15),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  color: orangeAccent,
                  fontSize: 16,
                  fontFamily: 'Poppins Light',
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if(emailController.text == email){
                  if(pwdController.text == pwd){
                    Navigator.pushReplacement(
                    context,
                    // DetailPage adalah halaman yang dituju 
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                      )
                    ),
                  );
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Password Salah"),
                      ));
                  }
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                      content: Text("Email Salah"),
                      ));
                }
                  
              },
              child: const Text("SIGN IN",
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
                Text("Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: lightGrey,
                    )),
                SizedBox(width: 7),
                Text("Sign up",
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
