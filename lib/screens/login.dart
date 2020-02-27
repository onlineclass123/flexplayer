import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// widgets
import '../widgets/textFormField.dart';
import '../widgets/firstButton.dart';

class Auth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Auth();
  }
}

class _Auth extends State <Auth> {
  login() {
    print('function called');
    Navigator.pushReplacementNamed(context, '/media');
  }
@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image2.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.all(23),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 200,),
                Form(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: CustomTextFormField('Email')
                      ),
                      TextFormField(
                        obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white
                              )
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.white)
                          ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 5),
                  child: Text('Forgot your password?',
                  textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    child: FirstButton(login, 'Login')
                    // MaterialButton(
                    //   onPressed: (){
                    //     //  Navigator.pushReplacementNamed(context, '/dashboard'); 
                    //     Navigator.pushReplacementNamed(context, '/listing');
                    //   },
                    //   child: Text('SIGN IN',
                    //   style: TextStyle(
                    //     fontSize: 15,
                    //     fontFamily: 'SFUIDisplay',
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.white
                    //   ),
                    //   ),
                    //   color: Color(0xffff2d55),
                    //   elevation: 0,
                    //   minWidth: 350,
                    //   height: 60,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(50)
                    //   ),
                    // ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.facebookSquare),
                        Text('Sign up with facebook',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SFUIDisplay'
                        ),)
                      ],
                    ),
                    color: Colors.transparent,
                    elevation: 0,
                    minWidth: 350,
                    height: 60,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              color: Colors.white,
                              fontSize: 15,
                            )
                          ),
                          TextSpan(
                            text: "sign up",
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              color: Color(0xffffa500),
                              fontSize: 15,
                            )
                          )
                        ]
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}