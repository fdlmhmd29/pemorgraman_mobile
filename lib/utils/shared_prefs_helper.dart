import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

Future<void> saveSubmittedData(List<Map<String, String>> data) async {
  final prefs = await SharedPreferences.getInstance();
  final String encodedData = jsonEncode(data);
  await prefs.setString('submitted_data', encodedData);
}

Future<List<Map<String, String>>> loadSubmittedData() async {
  final prefs = await SharedPreferences.getInstance();
  final String? encodedData = prefs.getString('submited_data');

  if (encodedData != null) {
    final List<dynamic> decoded = jsonDecode(encodedData);
    return decoded.map((item) => Map<String, String>.from(item)).toList();
  }

  return [];
}
