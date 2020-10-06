
import 'package:CustomerApp/ui/loginScreen/login.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
   bool isSwitched = true;
    bool isSwitched1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0, left: 8, top: 12),
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
                      'Create Account',
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
              SizedBox(height: 10),
              // TextFormField(
              //   decoration: InputDecoration(
              //     border: InputBorder.none,
              //     labelText: 'Email',
              //     labelStyle: TextStyle(
              //       fontFamily: 'Sfpro',
              //       fontSize: 17,
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                       hintText: 'Name',
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
              // SizedBox(height: 10.h),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Mobile Number',
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
              SizedBox(height: 60),
              ListTile(
                leading: Switch(
          value: isSwitched,
          onChanged: (value){
            setState(() {
              isSwitched=value;
              print(isSwitched);
            });
          },
          activeTrackColor: Color(0xff5200C6),
          activeColor: Colors.white,
        ),
        title:  RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I accept to store my ",
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff919196),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    WidgetSpan(
                      child: InkWell(
                        // onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => CreateAccount()),
                          // );
                        // },
                        child: Text(
                          "details",
                          style: TextStyle(
                            fontFamily: 'Sfpro',
                            color: Color(0xff5200C6),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "for providing better services",
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff919196),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
      ),
       ListTile(
                leading: Switch(
          value: isSwitched1,
          onChanged: (value){
            setState(() {
              isSwitched1=value;
              print(isSwitched1);
            });
          },
          activeTrackColor: Color(0xff5200C6),
          activeColor: Colors.white,
        ),
        title:  RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I am happy to receive ",
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff919196),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    WidgetSpan(
                      child: InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CreateAccount()),
                        //   );
                        // },
                        child: Text(
                          "promotions ",
                          style: TextStyle(
                            fontFamily: 'Sfpro',
                            color: Color(0xff5200C6),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: " &",
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff919196),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    WidgetSpan(
                      child: InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CreateAccount()),
                        //   );
                        // },
                        child: Text(
                          "offers",
                          style: TextStyle(
                            fontFamily: 'Sfpro',
                            color: Color(0xff5200C6),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: " from you",
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Color(0xff919196),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
      ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color(0xff5200C6),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        fontFamily: 'Sfpro',
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
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
                      text: "Already have an account? ",
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
                                builder: (context) => HomeView()),
                          );
                        },
                        child: Text(
                          " Sign in",
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
