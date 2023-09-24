import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Route Management Example',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/details', page: () => DetailsScreen()),
        GetPage(name: '/settings', page: () => SettingsScreen()),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Screen'),
            ElevatedButton(
              onPressed: () {
                Get.to(DetailsScreen());
              },
              child: Text('Go to Details (Get.to)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/settings');
              },
              child: Text('Go to Settings (Get.toNamed)'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Details Screen'),
            ElevatedButton(
              onPressed: () {
                Get.back(); // Navigate back to the previous screen
              },
              child: Text('Go Back (Get.back)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(SettingsScreen());
              },
              child: Text('Go to Settings (Get.off)'),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Settings Screen'),
            ElevatedButton(
              onPressed: () {
                Get.offAll(HomeScreen());
              },
              child: Text('Go to Home (Get.offAll)'),
            ),
          ],
        ),
      ),
    );
  }
}
