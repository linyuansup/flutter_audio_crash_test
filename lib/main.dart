import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            TextButton(
                onPressed: () async {
                  final lib = DynamicLibrary.open(
                      "D:\\93601\\Code\\testpro\\libopen_audio_engine.dll");
                  final func = lib
                      .lookupFunction<Int32 Function(), int Function()>("init");
                  final result = func();
                  print(result);
                },
                child: Text("test")),
          ],
        ),
      ),
    );
  }
}
