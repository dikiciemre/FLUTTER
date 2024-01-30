import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: false,
          title: const Text("Bugün ne Yesem ?"),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

//statefullwidget başlangıcı
class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;

//çorba isimlerini saklayan liste
  List<String> corbaAdlari = [
    "Mercimek Çorbası",
    "Yoğurt Çorbası",
    "Tarhana Çorbası"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // birinci foto için başlangıç
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  //TODO image ögesine tıklandığında setState fonksiyonu çalışır ve 3 numaralı foto ile değişir
                  setState(() {
                    corbaNo = corbaNo + 1;
                    //TODO corbano her tıklamada birer artıyor eğer 4 olur ise otomatik olarak 1 e dönüyor( if bloğu ile )
                    if (corbaNo == 4) {
                      corbaNo = 1;
                    }
                  });
                },
                child: Image.asset(
                    'assets/images/corba_$corbaNo.jpg'), //TODO setstate ile foto değişmesi için değişken atandı
              ),
            ),
          ),
          Text(corbaAdlari[corbaNo - 1]),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Color.fromARGB(255, 90, 90, 90),
            ),
          ),
          // birinci foto için bitiş

          // ikinci foto için başlangıç
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  print("2 Yazdı !");
                },
                child: Image.asset('assets/images/behzat.jpg'),
              ),
            ),
          ),
          // ikinci foto için bitiş

          // üçüncü foto için başlangıç
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  print("3 Yazdı !");
                },
                child: Image.asset('assets/images/behzat.jpg'),
              ),
            ),
          ),
          // üçüncü foto için bitiş
        ],
      ),
    );
  }
}
