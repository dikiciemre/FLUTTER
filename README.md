# Flutter Kurulumu

Bu README dosyası, Flutter'ı bilgisayarınıza nasıl kuracağınızı adım adım açıklar.

## Adım 1: İndirme ve Kurulum

1. Flutter'ın son sürümünü [resmi web sitesinden](https://flutter.dev/docs/get-started/install) indirin.
2. İndirilen dosyayı istediğiniz bir konuma çıkarın. Önerilen konum, kullanıcı dizininizin ana dizini (Windows'da `C:\` veya macOS'te `/Users/<kullanıcı_adınız>/`) içinde `flutter` klasörüdür.

## Adım 2: Flutter Yolu Eklemek

1. Flutter'ın yüklü olduğu dizinin `bin` alt dizinini, sistem yolunuza ekleyin.

### Windows için:

   Aşağıdaki adımları takip ederek `flutter\bin` yolunu ekleyin:

   - Başlat Menüsü'nde "Ortam Değişkenleri Düzenle" aramasını yapın ve sonuçları açın.
   - "Sistem Ortam Değişkenlerini Düzenle" seçeneğini tıklayın.
   - "Yeni" düğmesini tıklayın ve `flutter\bin` dizinini ekleyin.

### macOS ve Linux için:

   `~/.bash_profile`, `~/.zshrc`, veya `~/.bashrc` dosyasına aşağıdaki satırları ekleyin:

   ```bash
   export PATH="$PATH:/path/to/flutter/bin"
Dizini Flutter'ın yüklü olduğu dizinle değiştirin.

Adım 3: Flutter'ı Doğrulama
Bir terminal veya komut istemcisini açın.
flutter doctor komutunu çalıştırın.
Bu komut, Flutter ve bağımlılıklarının doğru bir şekilde yüklendiğini ve yapılandırıldığını kontrol edecektir.

Sonuç
Flutter'ı başarıyla kurduysanız, artık Flutter projeleri oluşturabilir ve geliştirebilirsiniz.

Lisans
Bu README dosyası [lisans adı] altında lisanslanmıştır. Daha fazla bilgi için LICENCE dosyasına bakın.

İletişim
Herhangi bir sorunuz veya geri bildiriminiz varsa, lütfen [email protected] adresiyle iletişime geçin.
