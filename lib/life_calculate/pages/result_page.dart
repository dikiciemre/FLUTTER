import 'package:flutter/material.dart';
import 'package:lifecalculate/life_calculate/components/user_data.dart';
import 'package:lifecalculate/life_calculate/components/hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  // ResultPage constructor'ı, bir UserData nesnesi alır.
  ResultPage(this._userData);

  // Belirli yaşam beklentisi değerlerine göre tavsiyeler veren bir metot.
  String getTavsiye(double lifeExpectancy) {
    if (lifeExpectancy >= 80) {
      return "Uzun bir yaşam beklentiniz var! Sağlıklı bir yaşam tarzını sürdürmeye devam edin ve düzenli olarak sağlık kontrolünden geçin.";
    } else if (lifeExpectancy >= 70) {
      return "Ortalama bir yaşam beklentiniz var. Daha sağlıklı bir yaşam için spor yapmaya başlayın ve sağlıklı beslenmeye dikkat edin.";
    } else {
      return "Yaşam beklentiniz düşük görünüyor. Sağlıklı yaşam için sigara içmeyi bırakın, düzenli egzersiz yapın ve dengeli beslenmeye özen gösterin.";
    }
  }

  @override
  Widget build(BuildContext context) {
    double lifeExpectancy = Hesap(_userData).hesaplama();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yaşam Beklentisi",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tahmini yaşam beklentisinin gösterildiği metin
            Text(
              "Tahmini Yaşam Beklentisi",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            // Yaşam beklentisi değerinin büyük ve kalın bir şekilde gösterildiği metin
            Text(
              "$lifeExpectancy",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 30),
            // Yaşam beklentisine göre tavsiyenin gösterildiği kart
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  getTavsiye(lifeExpectancy),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 30),
            // Geri dön butonu
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text(
                "Geri Dön",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
