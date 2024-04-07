import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Sosyal Medya',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildSocialCard(
              icon: Icons.link,
              color: Colors.blue,
              title: 'LinkedIn',
              onPressed: () {
                _launchURL('https://www.linkedin.com');
              },
            ),
            SizedBox(height: 16),
            buildSocialCard(
              icon: Icons.facebook,
              color: Colors.indigo,
              title: 'Facebook',
              onPressed: () {
                _launchURL('https://www.facebook.com');
              },
            ),
            SizedBox(height: 16),
            buildSocialCard(
              icon: Icons.social_distance,
              color: Colors.pink,
              title: 'Instagram',
              onPressed: () {
                _launchURL('https://www.instagram.com');
              },
            ),
            SizedBox(height: 16),
            buildSocialCard(
              icon: Icons.home,
              color: Colors.lightBlue,
              title: 'Twitter',
              onPressed: () {
                _launchURL('https://www.twitter.com');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialCard({
    required IconData icon,
    required Color color,
    required String title,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 4,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
