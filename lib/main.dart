
import 'package:CustomerApp/ui/Intro/intro_page.dart';
import 'package:CustomerApp/ui/loginScreen/create_account.dart';
import 'package:CustomerApp/ui/loginScreen/forgot_passoword.dart';
import 'package:CustomerApp/ui/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:CustomerApp/ui/loginScreen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Customer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:IntroPage(),
       routes: <String, WidgetBuilder> {
    '/splash': (BuildContext context) => new Splash(),
    '/login' : (BuildContext context) => Login(),
    // '/noticeboard' : (BuildContext context) => NoticeBoard(),
     '/createAccount' : (BuildContext context) => CreateAccount(),
     '/profile' :(BuildContext context)=>ForgotPassword(),
    // '/homePage':(BuildContext context)=>HomePage(),
       }
    );
  }
}


// import 'package:device_preview/device_preview.dart';
// import 'package:figma/ui/views/home_view.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(DevicePreview(builder: (context) => MyApp()));

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         builder: DevicePreview.appBuilder,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: HomeView());
//   }
// }