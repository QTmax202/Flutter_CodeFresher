import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const bool _showPass = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Container(
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffccf3ff),
                ),
                child: const FlutterLogo(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Text(
                "Hello Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Color(0xffd0d8da),
                      fontSize: 18,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: const <Widget>[
                  TextField(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      obscureText: _showPass,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Color(0xffd0d8da),
                          fontSize: 18,
                        ),
                      )),
                  const GestureDetector(
                    onTap: onToppleShowPass,
                    child: Text(
                      _showPass ? "SHOW" : "HIDE",
                      style: TextStyle(
                        color: Color(0xff03a7ff),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Color(0xff0080ff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: onSignInClicked,
                  child: Text("SIGN IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 130,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "New User? Sign up",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Color(0xff817b7b),
                    ),
                  ),
                  Text(
                    "Forgot Password!",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Color(0xff2f97ff),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onToppleShowPass() {
    setState((){
      _showPass = !_showPass;
    });
  }
}

void onSignInClicked() {

}
