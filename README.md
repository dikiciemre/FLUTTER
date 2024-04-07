## Flutter Kurulum Rehberi

Bu rehber, Flutter'ı bilgisayarınıza adım adım nasıl kuracağınızı açıklar.

**1. İndirme ve Kurulum:**

* **Flutter'ın son sürümünü** resmi web sitesinden indirin: [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)
* İndirilen dosyayı **istediğiniz bir yere** çıkarın. Önerilen konum, **kullanıcı dizininizin ana dizini** içinde `flutter` klasörüdür (Örnek: Windows'da `C:\flutter`, macOS'te `/Users/<kullanıcı_adınız>/flutter`).

**2. Flutter Yolunu Ekleme:**

* **Flutter'ın yüklü olduğu dizinin `bin` alt dizinini** sistem yolunuza ekleyin.

**Windows için:**

```
Başlat Menüsü'nde **"Ortam Değişkenleri Düzenle"** aramasını yapın ve açın.
**"Sistem Ortam Değişkenlerini Düzenle"** seçeneğini tıklayın.
**"Yeni"** düğmesini tıklayın ve **`flutter\bin`** dizinini ekleyin.
```

**macOS ve Linux için:**

`~/.bash_profile`, `~/.zshrc`, veya `~/.bashrc` dosyasına aşağıdaki satırı ekleyin:

```
export PATH="$PATH:/path/to/flutter/bin"
```

**Dizini, Flutter'ın yüklü olduğu dizinle değiştirin.**

**3. Flutter'ı Doğrulama:**

* Bir terminal veya komut istemcisi açın.
* **`flutter doctor`** komutunu çalıştırın.

Bu komut, Flutter ve bağımlılıklarının doğru şekilde yüklenip yapılandırıldığını kontrol eder.

**4. Kaynaklar:**

* Flutter Resmi Web Sitesi: [https://flutter.dev/](https://flutter.dev/)
* Flutter Kurulum Rehberi: [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)

**Not:**

* Bu rehber, Flutter'ın temel kurulumunu anlatır. Daha ayrıntılı bilgi için **Flutter belgelerine** bakabilirsiniz.
* Sorun yaşarsanız, **Flutter topluluğundan** yardım alabilirsiniz.
