import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

import 'core/apis/endpoints.dart';

class Environments {
  static const String PRODUCTION = 'prod';
  static const String QAS = 'QAS';
  static const String DEV = 'dev';
  static const String LOCAL = 'local';
}

class FirebaseConfig {
  static FirebaseOptions androidIosOptions(
      String apiKey, String appId, String messagingSenderId, String projectId, String storageBucket,
      {String? iosClientId, String? iosBundleId}) {
    return FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
      storageBucket: storageBucket,
      iosClientId: iosClientId,
      iosBundleId: iosBundleId,
    );
  }
}

class EnvironmentConfig {
  final String name;
  final String url;
  final String websiteUrl;
  final FirebaseOptions androidOptions;
  final FirebaseOptions iosOptions;
  final bool isProduction;

  EnvironmentConfig({
    required this.isProduction,
    required this.name,
    required this.url,
    required this.websiteUrl,
    required this.androidOptions,
    required this.iosOptions,
  });
  bool get isProd => Environments.PRODUCTION == name;
  FirebaseOptions get currentFirebaseOption => Platform.isIOS ? iosOptions : androidOptions;
}

class ConfigEnvironments {
  static const String _currentEnvironment = Environments.DEV;

  static final List<EnvironmentConfig> _availableEnvironments = [
    EnvironmentConfig(
      name: Environments.DEV,
      isProduction: false,
      websiteUrl:AppEndpoints.milesWebUatUrl,
      url: AppEndpoints.milesCpaUatUrl,
      androidOptions: FirebaseConfig.androidIosOptions(
        'AIzaSyAnDhZ2NC3f7kWfc8nbcX3FLez5cbhATy0',
        '1:369186395249:android:5b23d39ab0b5e9f060f7d0',
        '369186395249',
        'milesone-dev',
        'milesone-dev.appspot.com',
      ),
      iosOptions: FirebaseConfig.androidIosOptions(
        'AIzaSyDEehK8p6q4e9--NH366RNZitL6i5OuuGw',
        '1:369186395249:ios:576f6d052c20cf2160f7d0',
        '369186395249',
        'milesone-dev',
        'milesone-dev.appspot.com',
        iosClientId: '369186395249-09pu4vbf02hos9sk31vs96oprqhlctvh.apps.googleusercontent.com',
        iosBundleId: 'com.mileseducation.cpa',
      ),
    ),
    EnvironmentConfig(
      isProduction: true,
      websiteUrl:AppEndpoints.milesWebProdUrl,
      name: Environments.PRODUCTION,
      url: AppEndpoints.milesCpaProdUrl,
      androidOptions: FirebaseConfig.androidIosOptions(
        'AIzaSyDNnNP3aKKoHi86cU4KjAbDWtMZPvky2eY',
        '1:192507364527:android:740c3bdc0189899453c05a',
        '192507364527',
        'milesone',
        'milesone.appspot.com',
      ),
      iosOptions: FirebaseConfig.androidIosOptions(
        'AIzaSyC_7WYO075fuMxzGuZ2dCEJrO_e18FtFhQ',
        '1:192507364527:ios:e174ea3aa53e951853c05a',
        '192507364527',
        'milesone',
        'milesone.appspot.com',
        iosClientId: '192507364527-c2ojp84m36gicbaqb4kd85cbotsrdb30.apps.googleusercontent.com',
        iosBundleId: 'com.mileseducation.cpa',
      ),
    ),
  ];

  static EnvironmentConfig getCurrentEnvironment() {
    return _availableEnvironments.firstWhere((env) => env.name == _currentEnvironment);
  }
}
