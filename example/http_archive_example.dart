import 'dart:convert';

import 'package:http_archive/http_archive.dart';

void main() {
  const harJsonContentString = '''
    {
    "log": {
      "entries": [
        {
          "request": {
            "method": "GET",
            "url": "https://smth.com/data"
          },
          "response": {
            "status": 200,
            "content": {
              "mimeType": "application/json",
              "text": "Hey, this is response, most other fields are omitted for simplicity's sake."
            }
          }
        }
      ]
    }
  }  
  ''';
  final jsonMap = jsonDecode(harJsonContentString) as Map<String, dynamic>;
  final harRoot = HarRoot.fromJson(jsonMap);
  print('Response text: ${harRoot.log.entries[0].response.content.text}');
}
