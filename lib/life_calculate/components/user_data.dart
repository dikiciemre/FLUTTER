// UserData sınıfı, kullanıcı verilerini temsil etmek için kullanılır.
class UserData {
  // Kullanıcı verilerinin özel veri üyeleri.
  late String seciliCinsiyet; // Kullanıcının seçtiği cinsiyet
  double icilenSigara; // Günlük içilen sigara miktarı
  double sporGunu; // Haftalık spor günü sayısı
  int boy; // Kullanıcının boyu (cm cinsinden)
  int kilo; // Kullanıcının kilosu (kg cinsinden)

  // UserData sınıfının constructor'ı, gerekli tüm kullanıcı verilerini alır.
  UserData({
    required this.icilenSigara,
    required this.sporGunu,
    required this.seciliCinsiyet,
    required this.boy,
    required this.kilo,
  });
}
