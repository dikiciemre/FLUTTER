import 'package:lifecalculate/life_calculate/components/user_data.dart';

// Hesap sınıfı, kullanıcının yaşam beklentisini hesaplamak için kullanılır.
class Hesap {
  // Hesap sınıfının özel veri üyesi olan kullanıcı verisi.
  UserData _userData;

  // Hesap sınıfı constructor'ı, bir UserData nesnesi alır ve onu _userData veri üyesine atar.
  Hesap(this._userData);

  // hesaplama metodu, kullanıcının yaşam beklentisini hesaplar ve sonucu döndürür.
  double hesaplama() {
    // İlk tahmini sonuç değeri
    double sonuc;
    double kitleEndeksi;

    // İlk sonucu hesaplamak için kullanıcı verisinden bazı değerleri kullanarak formülü uygula
    sonuc = 80 + (_userData.sporGunu * 1.5);
    sonuc = (sonuc -
        _userData.icilenSigara *
            30 *
            12 *
            sonuc *
            12.5 /
            525948); // bir insanın ömrü boyunca haftalık içtiği sigara sayısı ömrüünden kaç yıl götürmektedir hesabı

    kitleEndeksi = _userData.kilo /
        (_userData.boy * _userData.boy); // kitle endeksi hesaplama

    if (kitleEndeksi < 18.5)
      sonuc = sonuc - 2;
    else if (18.5 <= kitleEndeksi && kitleEndeksi <= 24.9)
      sonuc = sonuc - 0;
    else if (25.0 <= kitleEndeksi && kitleEndeksi <= 29.9)
      sonuc = sonuc - 2;
    else if (30.0 <= kitleEndeksi && kitleEndeksi <= 34.9)
      sonuc = sonuc - 3;
    else if (35.0 <= kitleEndeksi && kitleEndeksi <= 39.9)
      sonuc = sonuc - 4;
    else
      sonuc = sonuc - 5;

    // Eğer kullanıcının seçili cinsiyeti "KADIN" ise sonuca 3 ekleyin.
    if (_userData.seciliCinsiyet == "KADIN") {
      return sonuc + 3;
    } else {
      // Aksi durumda, sonucu doğrudan döndürün.
      return sonuc;
    }
  }
}
