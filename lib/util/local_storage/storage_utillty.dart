import 'package:get_storage/get_storage.dart';

class RLocalStorage {
  static final RLocalStorage _instance = RLocalStorage._internal();

  factory RLocalStorage() {
    return _instance;
  }

  RLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<R>(String key, R value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  R? readData<R>(String key) {
    return _storage.read<R>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}