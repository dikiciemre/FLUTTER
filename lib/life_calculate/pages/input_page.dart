import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:lifecalculate/life_calculate/components/My_Container.dart';
import 'package:lifecalculate/life_calculate/drawer_pages/hakkimda.dart';
import 'package:lifecalculate/life_calculate/drawer_pages/social.dart';
import 'package:lifecalculate/life_calculate/components/icon_cinsiyet.dart';
import 'package:lifecalculate/life_calculate/pages/result_page.dart';
import 'package:lifecalculate/life_calculate/components/user_data.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late String seciliCinsiyet = "";
  double icilenSigara = 5.0;
  double sporGunu = 3.0;
  int boy = 170;
  int kilo = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(
            fontFamily: 'Emre',
            color: Colors.black54, // Metin rengi
            fontSize: 26, // Metin boyutu
            fontWeight: FontWeight.bold, // Metin kalınlığı
            fontStyle: FontStyle.italic, // Metin stili (italik)
            letterSpacing: 2, // Harf arası boşluk
            decoration: TextDecoration.underline, // Metin altı çizgisi
            decorationColor:
                Color.fromARGB(255, 188, 155, 155), // Altı çizgi rengi
            decorationThickness: 0.5, // Altı çizgi kalınlığı
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow[200],
              ),
              child: const Center(
                child: Text(
                  'Yaşam Beklentisi',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat_bubble_rounded),
              title: const Text('Sosyal Medya'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Social()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Hakkımda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//! BOY VE KİLO ALANI BAŞLANGICI
          //! birinci container alanı başlangıcı
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "BOY",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            boy.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 55, 71),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  boy++;
                                });
                              },
                              child: Icon(Icons.plus_one_sharp),
                            ),
                            OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    boy--;
                                  });
                                },
                                child:
                                    const Icon(Icons.exposure_minus_1_sharp)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //! birinci container alanı bitişi

                //! ikinci container alanı başlangıcı
                Expanded(
                  child: MyContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "KİLO",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            kilo.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 55, 71),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  kilo++;
                                });
                              },
                              child: const Icon(Icons.plus_one_sharp),
                            ),
                            OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                },
                                child:
                                    const Icon(Icons.exposure_minus_1_sharp)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //! ikinci container alanı bitişi
              ],
            ),
          ),
//! BOY VE KİLO ALANI BİTİŞİ

//TODO SPOR YAPMA ALANI BAŞLANGICI
          Expanded(
            child: MyContainer(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Haftada ne kadar spor yapıyorsun? ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      sporGunu.round().toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        thumbColor: Color.fromARGB(255, 255, 195, 195),
                        activeColor: Colors.black,
                        min: 0,
                        max: 7,
                        divisions: 7,
                        value: sporGunu,
                        onChanged: (double newValue) {
                          setState(() {
                            sporGunu = newValue;
                          });
                        })
                  ]),
            ),
          ),
//TODO SPOR YAPMA ALANI BİTİŞİ

//! SİGARA İÇME ALANI BAŞLANGICI
          Expanded(
            child: MyContainer(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Günde Kaç Sigara İçiyorsun ? ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      icilenSigara.round().toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        thumbColor: Color.fromARGB(255, 255, 195, 195),
                        activeColor: Colors.black,
                        divisions: 30,
                        value: icilenSigara,
                        onChanged: (double newValue) {
                          setState(() {
                            icilenSigara = newValue;
                          });
                        })
                  ]),
            ),
          ),
//! SİGARA İÇME ALANI BİTİŞİ

//TODO CİNSİYET SEÇME ALANI BAŞLANGICI
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "KADIN";
                      });
                    },
                    renk: seciliCinsiyet == "KADIN"
                        ? Colors.lightBlue
                        : Colors.white,
                    child: const MyColumn(
                      cinsiyet: "KADIN",
                      icon: Icons.girl,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "ERKEK";
                      });
                    },
                    renk: seciliCinsiyet == "ERKEK"
                        ? Colors.lightBlue
                        : Colors.white,
                    child: const MyColumn(
                      cinsiyet: "ERKEK",
                      icon: Icons.boy,
                    ),
                  ),
                ),
              ],
            ),
          ),
//TODO CİNSİYET SEÇME ALANI BİTİŞİ
          ButtonTheme(
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(
                        255, 255, 255, 255)), // Renk burada ayarlanır
              ),
              onPressed: () {
                playSound(); // Tuşa basıldığında ses çalınması için fonksiyonu çağırın
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(UserData(
                            icilenSigara: icilenSigara,
                            sporGunu: sporGunu,
                            seciliCinsiyet: seciliCinsiyet,
                            boy: boy,
                            kilo: kilo))));
              },
              child: const Text("Hesapla"),
            ),
          ),
        ],
      ),
    );
  }
}

// Ses çalma fonksiyonu
void playSound() {
  AssetsAudioPlayer.newPlayer().open(
    Audio('assets/assets_how.wav'),
  );
}
