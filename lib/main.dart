import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/firebase_options.dart';
import 'package:idcard/utils/themes/maintheme.dart';
import 'package:idcard/views/homescreen/homescreen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => HomeProvider())],
        child: MaterialApp(
          title: "fitGenie",
          theme: AppTheme.ligththeme,
          home: const Homescreen(),
        ));
  }
}
