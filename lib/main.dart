import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loop_radio/pages/home.dart';
import 'package:loop_radio/services/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationRailProvider())
      ],
      child: MaterialApp(
        title: 'Loop Radio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.deepPurple[400],
          scaffoldBackgroundColor: Color.fromRGBO(241, 238, 237, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.oxygenTextTheme(),
        ),
        home: HomePage(),
      ),
    );
  }
}
