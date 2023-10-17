import 'package:flutter/material.dart';
class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/bus.jpg')),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.red,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    //hintText: 'Enter valid email id as abc@gmail.com'
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(

                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.red,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}