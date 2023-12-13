import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trelloappclone_flutter/core/routes_manager.dart';

// // Sets up a singleton client object that can be used to talk to the server from
// // anywhere in our app. The client is generated from your server code.
// // The client is set up to connect to a Serverpod running on a local server on
// // the default port. You will need to modify this to connect to staging or
// // production servers.
// var client = Client('http://localhost:8080/')
//   ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trello Clone',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.landing,
      onGenerateRoute: RoutesGenerator.getRoute,
    );
  }
}
