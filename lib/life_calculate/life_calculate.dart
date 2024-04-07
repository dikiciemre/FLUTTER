import 'package:flutter/material.dart';
import 'package:lifecalculate/life_calculate/pages/input_page.dart';

// Uygulama giriş noktası olan main fonksiyonu.
void main() {
  // Uygulamayı başlatmak için runApp fonksiyonunu kullanın ve MyApp widget'ını argüman olarak geçirin.
  runApp(MyApp());
}

// MyApp widget'ı, uygulamanın ana widget'ıdır ve MaterialApp widget'ını içerir.
class MyApp extends StatelessWidget {
  // MyApp widget'ının build metodu, uygulamanın arayüzünü oluşturur.
  @override
  Widget build(BuildContext context) {
    // MaterialApp widget'ının döndürülen değeri, uygulamanın temasını ve ana sayfasını belirtir.
    return MaterialApp(
      // Tema ayarları, uygulamanın genel görünümünü belirler.
      theme: ThemeData(
        // Scaffold arkaplan rengi
        scaffoldBackgroundColor: Colors.yellow[300],
        // Scaffold'ın üst kısmındaki app bar'ın rengi
        primaryColor: Colors.lightBlue,
      ),
      // Ana sayfa, InputPage widget'ı olarak belirlenir.
      home: InputPage(),
    );
  }
}
