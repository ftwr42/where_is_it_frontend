import 'package:hive/hive.dart';

// hive/database examples https://pub.dev/packages/hive

class DataManager {
  late final collection;

  DataManager({required String databaseName}) {
    collection = BoxCollection.open(
      databaseName, // Name of your database
      {
        'profile',
      }, // Names of your boxes
      path: './',
      // key: HiveCipher(), // Key to encrypt your boxes (Only used in Flutter / Dart IO)
    );
  }

  getProfileData() {
    var profile = collection.openBox<Map>('profile');

    var id = profile.get('id');
    var name = profile.get('name');
    var email = profile.get('email');

    print('Loki is ${profile?['age']} years old.');
  }

  setProfileData(String id, String name, String email) {
    var profile = collection.openBox<Map>('profile');

    profile.put('credentials', {'id': id, 'name': name, 'email': email});
  }
}
