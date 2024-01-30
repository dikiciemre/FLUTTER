import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 237, 184),
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ************************* 1. SATIR *************************

          Row(
            children: [
              // birinci tuş başlangıcı
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      player.play(UrlSource("/assets/assets_crash.wav"));
                    },
                    child: Container(
                      child: Text(
                        "DUM1",
                        style: TextStyle(
                            color: Colors.blue,
                            backgroundColor:
                                const Color.fromARGB(455, 25, 193, 7)),
                      ),
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ),
              // birinci tuş bitişi

              // ikinci tuş başlangıcı
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    player.play(UrlSource("/assets/assets_crash.wav"));
                  },
                  child: Container(
                    color: Color.fromARGB(255, 255, 108, 71),
                  ),
                ),
              ),
              // ikinci tuş bitişi
            ],
          ),
          // ************************* 1. SATIR bitişi *************************

          // ************************* 2. SATIR *************************
          Row(
            children: [
              // üçüncü tuş başlangıcı
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    player.play(UrlSource("/assets/assets_crash.wav"));
                  },
                  child: Container(
                    color: Color.fromARGB(255, 255, 108, 71),
                  ),
                ),
              ),
              // üçüncü tuş bitişi

              // DÖRDÜNCÜ tuş başlangıcı
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    player.play(UrlSource("/assets/assets_crash.wav"));
                  },
                  child: Container(
                    color: Color.fromARGB(255, 63, 255, 223),
                  ),
                ),
              ),
              // DÖRDÜNCÜ tuş bitişi
            ],
          ),
          // ************************* 2. satır bitişi *************************

          // ************************* 3. satır başlangıcı *************************
          Row(
            children: [
              // beşinci tuş başlangıcı
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    player.play(UrlSource("/assets/assets_crash.wav"));
                  },
                  child: Container(
                    color: Color.fromARGB(214, 87, 57, 255),
                  ),
                ),
              ),
              // beşinci tuş bitişi

              // altıncı tuş başlangıcı
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    player.play(UrlSource("/assets/assets_crash.wav"));
                  },
                  child: Container(
                    color: Color.fromARGB(213, 241, 89, 255),
                  ),
                ),
              ),
              // altıncı tuş bitişi
            ],
          ),
          // ************************* 3. satır bitişi *************************
        ],
      ),
    );
  }
}
