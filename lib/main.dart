import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/widgets/constant_file.dart';

void main() async {
  runApp(const MyApp());
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins1 '),
      home: const NotesView(),
    );
  }
}
