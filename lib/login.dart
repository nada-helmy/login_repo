import 'package:flutter/material.dart';

import 'customformfield.dart';
import 'home.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKy= GlobalKey<FormState>();

  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset('assets/imgs/background.png',
              width: double.infinity,
              fit:BoxFit.fill ),
          Form(
              key: formKy,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .35,
                      ),
                      Customformfield(
                        validator: (text) {
                          if(text==null||text.trim().isEmpty ){
                            return 'please enter a userName';
                          }
                          if(text.length<=2){return 'userName should be at least 2 char';}
                          return null;
                        },
                        Controller:nameController,
                        labeltxt: 'User Name',
                      ),
                      Customformfield(
                        validator: (text) {
                          if(text==null||text.trim().isEmpty ){
                            return 'please enter your email';
                          }
                          bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(text);
                          if (!emailValid) {
                            return 'please enter a valid email';
                          }
                          return null;
                        },
                        Controller:emailController,
                        labeltxt: 'Email',
                      ),
                      Customformfield(
                        validator: (pass) {
                          if(pass==null||pass.trim().isEmpty ){
                            return 'please enter a password';
                          }
                          if(pass.length <6){
                            return 'password should be at least 6 char';
                          }
                          return null;
                        },
                        txtSecure:true,
                        Controller:passController ,
                        labeltxt: 'Password',
                      ),
                      SizedBox(
                        height: height * .1,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                              padding:EdgeInsets.symmetric(vertical:10,horizontal:width*.2),
                              backgroundColor:Colors.grey.shade300 ,
                              shape: OvalBorder()
                          ) ,
                          onPressed: (){
                            login();
                            setState(() {});
                          },
                          child: Text('login',style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent.shade400
                          ),)),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  void login(){
    if(formKy.currentState!.validate()==true){
       Navigator.of(context).pushNamed(Home.routeName);
       setState(() {});
    }
  }
}
