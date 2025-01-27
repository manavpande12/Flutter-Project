import 'package:flutter/material.dart';
import 'package:todo_list_keys/keys/keys.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TO-DO LIST WITH KEYS'),
        ),
        body: Keys(),
      ),
    );
  }
}
