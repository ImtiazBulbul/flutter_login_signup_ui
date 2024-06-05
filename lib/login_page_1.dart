import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log in Page',
      home: loginPage(),
    );
  }
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Login', style: TextStyle(fontSize: 40, color: Colors.white,),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Welcome Back', style: TextStyle(fontSize: 20, color: Colors.white,),),
            ),
            SizedBox(height: 70),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          obscureText: false,  // for password
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: 'Email or Phone Number',
                              hintStyle: TextStyle(color: Colors.grey),
                              // label: Text('Email or Phone'),
                              // labelStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  )
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          obscureText: false,  // for password
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          enabled: true,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              // label: Text('Password'),
                              // labelStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  )
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Fogrot Password?',
                            style: TextStyle(color: Colors.blueAccent,fontSize: 15),),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blueAccent,
                              elevation: 10,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                              shadowColor: Colors.grey,
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('------------------- or Continue With -------------------',
                            style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/facebook.png',height: 60,width: 80,),
                          Image.asset('assets/icons/google.png',height: 70,width: 90,),
                        ],
                      ),
                      SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont\'t have an account?',style: TextStyle(color: Colors.grey,fontSize: 15),),
                          Text('SIGN UP',
                            style: TextStyle(color: Colors.blueAccent,fontSize: 15,
                                fontWeight: FontWeight.bold,decoration: TextDecoration.underline,
                                decorationColor: Colors.blueAccent),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
