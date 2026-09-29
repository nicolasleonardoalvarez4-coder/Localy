import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:localy/screens/mainScreens.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Mainscreens(),
      ),
    );
  }
}

