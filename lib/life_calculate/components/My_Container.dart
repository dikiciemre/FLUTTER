import 'package:flutter/material.dart';

// MyContainer widgeti, içeriğini ve üzerine tıklanabilirliğini belirleyen özel bir konteyner oluşturur.
class MyContainer extends StatelessWidget {
  // MyContainer widgetinin parametreleri olan renk, child ve onPress.
  final Color renk; // Konteynerin arkaplan rengi
  final Widget? child; // Konteynerin içeriği
  final Function()?
      onPress; // Konteyner üzerine tıklandığında tetiklenecek fonksiyon

  // MyContainer constructor'ı, varsayılan olarak beyaz bir arka plan rengi ve null değerli child ve onPress alır.
  const MyContainer({this.renk = Colors.white, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    // GestureDetector widget'ı, kullanıcının konteyner üzerine tıklamasını algılar.
    return GestureDetector(
      onTap:
          onPress, // Konteyner üzerine tıklandığında onPress fonksiyonunu çağırır.
      child: Container(
        // Container widget'ı, içeriğini ve stilini belirler.
        child: child, // Konteynerin içeriği
        margin: EdgeInsets.all(12.0), // Konteynerin kenar boşluğu
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              10.0), // Konteynerin kenar yuvarlanma yarıçapı
          color: renk, // Konteynerin arka plan rengi
        ),
      ),
    );
  }
}
