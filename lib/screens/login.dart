import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Login Page",
                  style: TextStyle(color: Colors.redAccent, fontSize: 20.0)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Silahkan Login Untuk Menggunakan Aplikasi Ini"),
            ),
            SizedBox(height: 25.0),
            Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email or Username",
                        icon: Icon(Icons.person, color: Colors.redAccent),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check, color: Colors.greenAccent),
                        )),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        icon: Icon(Icons.https, color: Colors.redAccent),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check, color: Colors.greenAccent),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: MediaQuery.of(context).size.width - 20,
              textColor: Colors.white,
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Colors.pink,
              splashColor: Colors.pinkAccent,
              highlightColor: Colors.redAccent,
              child: Text("LOGIN"),
            ),
            SizedBox(height: 15.0),
            FlatButton(
              onPressed: () {},
              textColor: Colors.redAccent,
              child: Text("Forgot password?"),
            ),
            SizedBox(height: 15.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: Divider()),
                  SizedBox(width: 8.0),
                  Text("or"),
                  SizedBox(width: 8.0),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Login with", style: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/img/ico/facebook.png",
                        height: 35.0, width: 35.0),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/img/ico/twitter.png",
                        height: 35.0, width: 35.0),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/img/ico/search.png",
                        height: 35.0, width: 35.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("You have an account? ",
                      style: TextStyle(color: Colors.grey)),
                  InkWell(
                      onTap: () {},
                      child: Text("Log in",
                          style: TextStyle(color: Colors.redAccent))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
