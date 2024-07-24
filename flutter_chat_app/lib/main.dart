import 'package:flutter/material.dart';
import 'package:flutter_chat_app/pages/register_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://lpqeuusmsrsydzjkcigv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxwcWV1dXNtc3JzeWR6amtjaWd2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk3MzIzNzYsImV4cCI6MjAzNTMwODM3Nn0.BzcGxsPpNAr5rKuCy9UbbJvsEMqQe2rkjBFeuMNK8kM',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'チャットアプリ',
      home: RegisterPage(), // RegisterPageを表示するように変更
    );
  }
}