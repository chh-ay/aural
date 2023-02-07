import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName {
    return '.env';
  }

  static String get apiKey {
    return dotenv.env['KEY'] ?? '';
  }

  static String get appId {
    return dotenv.env['APPID'] ?? '';
  }

  static String get sendId {
    return dotenv.env['SENDERID'] ?? '';
  }

  static String get projectId {
    return dotenv.env['PROJECTID'] ?? '';
  }

  static String get bucket {
    return dotenv.env['STORAGE'] ?? '';
  }
}
