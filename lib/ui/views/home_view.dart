// import 'package:CustomerApp/ui/base_widget.dart';
// import 'package:CustomerApp/ui/loginScreen/create_account.dart';
// import 'package:CustomerApp/ui/loginScreen/forgot_passoword.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:local_auth/auth_strings.dart';
// import 'package:local_auth/local_auth.dart';

// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// String url = "http://54.170.249.39:8080/CustomerApp/";

// class HomeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Webview Example',
//       theme: ThemeData.dark(),
//       routes: {
//         "/": (_) => HomeView1(),
//         "/webview": (_) => WebviewScaffold(
//               url: url,
//               withJavascript: true,
//               withLocalStorage: true,
//               withZoom: true,
//             )
//       },

//       // home: Home(),
//     );
//   }
// }


// class HomeView1 extends StatefulWidget {
//   const HomeView1({Key key}) : super(key: key);

  

//   @override
//   _HomeView1State createState() => _HomeView1State();
// }

// class _HomeView1State extends State<HomeView1> {
//    final webView = FlutterWebviewPlugin();
//   TextEditingController controller = TextEditingController(text: url);

//    LocalAuthentication auth = LocalAuthentication();
//   bool _canCheckBiometric;
//   List<BiometricType> _availableBiometric;
//   String authorized = "Not authorized";

//   //checking bimetrics
//   //this function will check the sensors and will tell us
//   // if we can use them or not
//   Future<void> _checkBiometric() async {
//     bool canCheckBiometric;
//     try {
//       canCheckBiometric = await auth.canCheckBiometrics;
//     } on PlatformException catch (e) {
//       print(e);
//     }
//     if (!mounted) return;

//     setState(() {
//       _canCheckBiometric = canCheckBiometric;
//     });
//   }

//   //this function will get all the available biometrics inside our device
//   //it will return a list of objects, but for our example it will only
//   //return the fingerprint biometric
//   Future<void> _getAvailableBiometrics() async {
//     List<BiometricType> availableBiometric;
//     try {
//       availableBiometric = await auth.getAvailableBiometrics();
//     } on PlatformException catch (e) {
//       print(e);
//     }
//     if (!mounted) return;

//     setState(() {
//       _availableBiometric = availableBiometric;
//     });
//   }

//   //this function will open an authentication dialog
//   // and it will check if we are authenticated or not
//   // so we will add the major action here like moving to another activity
//   // or just display a text that will tell us that we are authenticated
//   Future<void> _authenticate() async {
//     bool authenticated = false;
//     AndroidAuthMessages _androidMsg = AndroidAuthMessages(

//     );
//     try {
//       authenticated = await auth.authenticateWithBiometrics(
//           localizedReason: "Scan your finger print to authenticate",
//           useErrorDialogs: true,
//           stickyAuth: false,
//           androidAuthStrings: _androidMsg,
//           );
//     } on PlatformException catch (e) {
//       print(e);
//     }
//     if (!mounted) return;

//     setState(() {
//       authorized =
//           authenticated ? "Autherized success" : "Failed to authenticate";
//       if (authenticated) {
//        Navigator.of(context).pushNamed("/webview");
        
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _checkBiometric();
//     _getAvailableBiometrics();

//      webView.close();
//     controller.addListener(() {
//       url = controller.text;
//     });
//   }

//    @override
//   void dispose() {
//     webView.dispose();
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BaseWidget(
//       builder: (context, sizingInformation) {
//         return Scaffold(
//       // backgroundColor: Color(0xfff1f1f1),
//       body: Container(
//         child: SingleChildScrollView(
//           child: SafeArea(
//             child: Column(children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, bottom: 8.0, left: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         // Icon(
//                         //   Icons.keyboard_arrow_left,
//                         //   size: 30,
//                         //   color: Color(0xff5200C6),
//                         // ),
//                         Image.asset(
//                           'assets/images/Arrow.png',
//                           width: 12,
//                           height: 20,
//                         ),
//                         SizedBox(width: 3),
//                         Text(
//                           'Back',
//                           style: TextStyle(
//                             fontFamily: 'Sfpro',
//                             color: Color(0xff5200C6),
//                             fontSize: 17,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Login',
//                       style: TextStyle(
//                         fontFamily: 'Sfpro',
//                         color: Color(0xff000000),
//                         fontSize: 17,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Container(width: 70),
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey[700],
//               ),
//               SizedBox(height: 10),
//               // TextFormField(
//               //   decoration: InputDecoration(
//               //     border: InputBorder.none,
//               //     labelText: 'Email',
//               //     labelStyle: TextStyle(
//               //       fontFamily: 'Sfpro',
//               //       fontSize: 17,
//               //     ),
//               //   ),
//               // ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none, hintText: 'Email',
//                        hintStyle: TextStyle(
//                              color: Color(0xff919196),
//                              fontSize: 17,
//                                fontFamily: 'Sfpro',
//                            )
//                            ),
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey[700],
//                 indent: 10,
//                 endIndent: 10,
//               ),
//               // SizedBox(height: 10.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     width: 200,
//                     child: TextField(
//                       decoration: InputDecoration(
//                           border: InputBorder.none,
//                            hintText: 'Password',
//                            hintStyle: TextStyle(
//                              color: Color(0xff919196),
//                              fontSize: 17,
//                                fontFamily: 'Sfpro',
//                            )
//                            ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ForgotPassword()),
//                       );
//                     },
//                     child: Text(
//                       'forgot password',
//                       style: TextStyle(
//                         fontFamily: 'Sfpro',
//                         color: Color(0xff5200C6),
//                         fontSize: 13,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(
//                 color: Colors.grey[700],
//                 indent: 10,
//                 endIndent: 10,
//               ),
//               SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 55,
//                   decoration: BoxDecoration(
//                       color: Color(0xff5200C6),
//                       borderRadius: BorderRadius.circular(5.0)),
//                   child: FlatButton(
//                      onPressed: () {
//                   Navigator.of(context).pushNamed("/webview");
//                 },
//                     child: Text(
//                       'Sign in',
//                       style: TextStyle(
//                         fontFamily: 'Sfpro',
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 55,
//                   decoration: BoxDecoration(
//                       color: Color(0xffF15A2B),
//                       borderRadius: BorderRadius.circular(5.0)),
//                   child: FlatButton(
//                     onPressed: _authenticate,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           'assets/images/Vector.png',
//                           width: 25,
//                           height: 28,
//                         ),
//                         SizedBox(width: 5),
//                         Text(
//                           'Sign in with fingerprint',
//                           style: TextStyle(
//                             fontFamily: 'Sfpro',
//                             color: Colors.white,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: "Don't have an account? ",
//                       style: TextStyle(
//                         fontFamily: 'Sfpro',
//                         color: Color(0xff919196),
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     WidgetSpan(
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => CreateAccount()),
//                           );
//                         },
//                         child: Text(
//                           " create account",
//                           style: TextStyle(
//                             fontFamily: 'Sfpro',
//                             color: Color(0xff5200C6),
//                             fontSize: 15,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//       },
//     );
//   }
// }