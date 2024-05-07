import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: loginPage(),
    );
  }
}
class loginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            //Padding(padding: EdgeInsets.all(20),),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Text('Login',style: TextStyle(fontSize: 40,color: Colors.white,),),
            ),
            //SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Welcome  Back',style: TextStyle(fontSize: 20,color: Colors.white,),),
            ),
            SizedBox(height: 80,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        enabled: true,
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: 'Email or Phone Number',
                          hintStyle: TextStyle(color: Colors.grey,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        enabled: true,
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.blueAccent,),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('Forgot Password?',style: TextStyle(color: Colors.blueAccent,fontSize: 14,),),
                        ),
                        //TextButton(onPressed: onPressed, child: child)
                      ],
                    ),
                    SizedBox(height: 70,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blueAccent,
                              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              textStyle: TextStyle(
                                fontSize: 22,fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 75,),
                        Image(image: AssetImage('assets/icons/facebook.jpg'),
                          height: 65,
                          width: 65,
                          //fit: BoxFit.fitWidth,
                        ),
                        Image(image: AssetImage('assets/icons/google.png'),
                          height: 100,
                          width: 100,
                          //fit: BoxFit.scaleDown,
                        ),
                      ],
                    ),
                    SizedBox(height: 200,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?',style: TextStyle(color: Colors.grey), ),
                        Text('SIGN UP',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}