import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.purple[400],
        body: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 150),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.425, right: 35, left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(fillColor: Colors.purple.shade100, filled: true, hintText: 'E-mail', border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(fillColor: Colors.purple.shade100, filled: true, hintText: 'Password', border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 75,
                      ),
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Color(0xffd391ea),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, 'page');
                          },
                          icon: Icon(Icons.arrow_forward),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'page');
                            },
                            child: Text(
                              'or create account..',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
