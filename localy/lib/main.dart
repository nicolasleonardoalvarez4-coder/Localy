import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:localy/app/main_shell.dart';
import 'package:localy/core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localy',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const Scaffold(body: Mainscreens()),
    );
  }
}
