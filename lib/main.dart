import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(
    AssetSource('note$soundNumber.wav'),
  );
}
 
         Expanded createButton(Color color, int key) {
              return Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(color),
                        ),
                      onPressed: () {
                            playSound(key);
                          },
                          child: Text('Button $key'),
                        ),
                      );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                     createButton(Colors.red, 1),
                     createButton(Colors.deepOrange, 2),
                     createButton(Colors.yellow, 3),
                     createButton(Colors.green, 4),
                     createButton(Colors.lime, 5),
                     createButton(Colors.blue, 6),
                     createButton(Colors.purple, 7),
                    ],
                  ),
                ),
            ),
            );
            }
            }