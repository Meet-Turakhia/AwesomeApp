import 'package:awesomeapp/pages/home_page.dart';
import 'package:awesomeapp/pages/home_page_with_sb.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:awesomeapp/utils/constants.dart';
import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/login_page.dart';

Future main() async {
  // widget app material app cupertino app
  WidgetsFlutterBinding.ensureInitialized();
  Constants.pref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.pref.getBool("loggedIn") == true
          ? HomePageSB()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}


// decoration: BoxDecoration(
//     color: Colors.red,
//     borderRadius: BorderRadius.circular(10),
//     gradient: LinearGradient(colors: [Colors.pink, Colors.yellow]),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey,
//         blurRadius: 10,
//       )
//     ]),
// child: Text("I'm a Box",
//     textAlign: TextAlign.center,
//     style: TextStyle(
//       fontSize: 20,
//       color: Colors.white,
//       fontWeight: FontWeight.bold
//     )),


//  child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//           Container(
//           padding: const EdgeInsets.all(8),
//           width: 100,
//           height: 100,
//           color: Colors.red,
//           alignment: Alignment.center,
//         ),
//         Container(
//           padding: const EdgeInsets.all(8),
//           width: 100,
//           height: 100,
//           color: Colors.yellow,
//           alignment: Alignment.center,
//         ),
//         Container(
//           padding: const EdgeInsets.all(8),
//           width: 100,
//           height: 100,
//           color: Colors.green,
//           alignment: Alignment.center,
//         )
//         ],),