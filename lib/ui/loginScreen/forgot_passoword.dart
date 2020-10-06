import 'package:CustomerApp/ui/loginScreen/create_account.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color(0xfff1f1f1),
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0, left: 8,top:12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                             movetoBack();
                          },
                          child: Image.asset(
                                  'assets/images/Arrow.png',
                                  width: 12,
                                  height: 20,
                            ),
                        ),
                        SizedBox(width:3),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Sfpro',
                            color: Color(0xff5200C6),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Password Reset',
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff000000),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(width: 70),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[700],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10.0),
                child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff000000),
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              ),
                   Text(
                    'Mel ea numqumem efficiendi appellantur, euvix reque inermis propriae',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sfpro',
                      color: Color(0xff919196),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email',
                       hintStyle: TextStyle(
                             color: Color(0xff919196),
                             fontSize: 17,
                               fontFamily: 'Sfpro',
                           )
                      ),
                ),
              ),
              Divider(
                color: Colors.grey[700],
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color(0xff5200C6),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff919196),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    WidgetSpan(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()),
                          );
                        },
                        child: Text(
                          " Create Account",
                          style: TextStyle(
                            fontFamily: 'Sfpro',
                            color: Color(0xff5200C6),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
   void movetoBack() {
    Navigator.pop(context);
  }
}
