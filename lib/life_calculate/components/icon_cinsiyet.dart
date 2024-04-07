import 'package:flutter/material.dart';

// MyColumn widgeti, cinsiyet simgesini ve adını içeren bir sütun oluşturur.
class MyColumn extends StatelessWidget {
  // MyColumn widgetinin parametreleri olan cinsiyet ve icon.
  final String cinsiyet; // Kullanıcının cinsiyetini temsil eden metin.
  final IconData icon; // Cinsiyeti temsil eden simge.

  // MyColumn constructor'ı, varsayılan olarak belirsiz bir cinsiyet ve holiday_village simgesi alır.
  const MyColumn(
      {this.cinsiyet = "Belirsiz", this.icon = Icons.holiday_village});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // İkon widgeti, icon parametresi tarafından belirtilen simgeyi görüntüler.
        Icon(
          icon,
          size: 50, // İkonun boyutu
        ),
        SizedBox(
          height: 10, // İkon ile metin arasındaki boşluk
        ),
        // Metin widgeti, cinsiyeti temsil eden metni görüntüler.
        Text(
          cinsiyet,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold), // Metin stilini belirler
        )
      ],
    );
  }
}
