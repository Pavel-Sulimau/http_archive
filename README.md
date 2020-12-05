A library that helps in reading/writing '.har' (archival format for HTTP transactions) data.

## Usage

A simple usage example:

```dart
import 'dart:convert';

import 'package:http_archive/http_archive.dart';

main() {
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
              "text": "Hey, it's the response, most other fields are omitted for simplicity's sake."
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/Pavel-Sulimau/http_archive/issues
