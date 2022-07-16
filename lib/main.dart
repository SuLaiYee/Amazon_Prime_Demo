import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        buttonColor: Colors.indigoAccent),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        leading: Align(
          child: Text("Back", style: TextStyle(fontSize: 18)),
        ),
        title: Image.asset('assets/images/amazon.png'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.refresh,
                size: 24,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(color: Color.fromRGBO(17, 23, 30, 1.0)),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create account",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.black),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                hintText: "Your email Address",
                hintStyle: TextStyle(color: Colors.black),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                hintText: "Create a password",
                hintStyle: TextStyle(color: Colors.black),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(child: Icon(Icons.info, color: Colors.blue,size: 18,),),
                      TextSpan(
                        text: "Passwords must be at least 6 characters",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400, // <-- match_parent
              height: 45, // <-
              // - match-parent
              child: RaisedButton(
                disabledColor: Colors.blue,
                onPressed: null,
                textColor: Colors.white,
                child: const Text(
                  'Create your Amazon Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website",
              style: TextStyle(
                color: Color.fromRGBO(112, 127, 138, 1.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 400, // <-- match_parent
              height: 45, // <-- match-parent
              child: RaisedButton(
                onPressed: null,
                disabledColor: Color.fromRGBO(61, 81, 99, 1.0),
                child: Text(
                  'Sign-In Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "@1996-2021, Amazon.com, Inc. or its affiliates",
              style: TextStyle(
                color: Color.fromRGBO(112, 127, 138, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
