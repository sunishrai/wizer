import 'package:shared_preferences/shared_preferences.dart';

class StorageItem {
  StorageItem(this.key, this.value);

  final String key;
  final String value;
}

abstract class BaseLocalStorage {
  /// writing data into  storage
  Future<void> writeData(StorageItem newItem);

  /// read the  data concerning the key
  Future<String?> readData(String key);

  /// delete a key-value pair
  Future<void> deleteData(String key);

  /// checking whether the storage contains the provided key or not
  Future<bool> containsKeyInData(String key);

  /// read all the  data
  Future<List<StorageItem>> readAllData();

  /// to delete all the  data
  Future<void> deleteAllData();
}

class LocalStorageService implements BaseLocalStorage {
  late SharedPreferences _sharedPreferences;
  LocalStorageService._();
  static final LocalStorageService instance = LocalStorageService._();

  Future<void> initialize() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<void> writeData(StorageItem newItem) async {
    await _sharedPreferences.setString(newItem.key, newItem.value);
  }

  @override
  Future<String?> readData(String key) async {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<void> deleteData(String key) async {
    await _sharedPreferences.remove(key);
  }

  @override
  Future<bool> containsKeyInData(String key) async {
    return _sharedPreferences.containsKey(key);
  }

  @override
  Future<List<StorageItem>> readAllData() async {
    final allKeys = _sharedPreferences.getKeys();
    final List<StorageItem> list = allKeys
        .map((key) => StorageItem(key, _sharedPreferences.getString(key) ?? ''))
        .toList();
    return list;
  }

  @override
  Future<void> deleteAllData() async {
    await _sharedPreferences.clear();
  }
}
