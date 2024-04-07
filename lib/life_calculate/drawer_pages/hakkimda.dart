import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Hakkımda'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  'assets/images/ımage-1.jpg'), // Profil resmi buraya eklenecek
            ),
            SizedBox(height: 20),
            Text(
              'Mustafa Emre Dikici',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Bilgisayar Mühendisi',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Merhaba, ben Mustafa Emre Dikici. Bilgisayar mühendisiyim ve yazılım geliştirme alanında tutkulu biriyim. Teknolojiyi kullanarak insanların hayatını kolaylaştırmayı amaçlıyorum.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
