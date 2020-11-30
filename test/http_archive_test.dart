import 'dart:convert';
import 'dart:io';

import 'package:http_archive/http_archive.dart';
import 'package:test/test.dart';

void main() {
  group('Har request', () {
    test(
      'method is parsed correctly',
      () async {
        final harRoot = await _createHarRootFromFile(
            'test/resources/jsonplaceholder_get_todos_1.har.json');
        final harRequest = harRoot.log.entries[0].request;

        expect(harRequest.method, equals('GET'));
      },
    );

    test('url is parsed correctly', () async {
      final harRoot = await _createHarRootFromFile(
          'test/resources/jsonplaceholder_get_todos_1.har.json');
      final harRequest = harRoot.log.entries[0].request;

      expect(
        harRequest.url,
        equals('https://jsonplaceholder.typicode.com/todos/1'),
      );
    });

    test('headers are parsed correctly', () async {
      final harRoot = await _createHarRootFromFile(
          'test/resources/jsonplaceholder_get_todos_1.har.json');
      final harRequest = harRoot.log.entries[0].request;

      expect(harRequest.headers.length, equals(16));
      final lastHeader = harRequest.headers[15];
      expect(lastHeader.name, equals('accept-language'));
      expect(lastHeader.value, equals('en-US,en;q=0.9,ru;q=0.8'));
    });

    test('url with query string is parsed correctly', () async {
      final harRoot = await _createHarRootFromFile(
          'test/resources/jsonplaceholder_get_comments_for_post_with_id_1.har.json');

      expect(
        harRoot.log.entries[0].request.url,
        equals('https://jsonplaceholder.typicode.com/comments?postId=1'),
      );
    });
  });

  group('Har response', () {
    HarResponse _harResponse;

    setUpAll(() async {
      final harRoot = await _createHarRootFromFile(
          'test/resources/jsonplaceholder_get_comments_for_post_with_id_1.har.json');
      _harResponse = harRoot.log.entries[0].response;
    });

    test('status is parsed correctly', () {
      expect(
        _harResponse.status,
        equals(HttpStatus.ok),
      );
    });

    test('headers are parsed correctly', () {
      expect(
        _harResponse.headers.length,
        equals(22),
      );

      final ninthHeader = _harResponse.headers[8];
      expect(ninthHeader.name, equals('cache-control'));
      expect(ninthHeader.value, equals('max-age=43200'));
    });

    test('content is parsed correctly', () {
      expect(_harResponse.content.mimeType, equals('application/json'));
      expect(
        _harResponse.content.text,
        startsWith('[\n  {\n    "postId": 1,\n    "id": 1,\n    "name":'),
      );
      expect(
        _harResponse.content.text,
        endsWith('nvoluptates magni quo et"\n  }\n]'),
      );
    });
  });
}

Future<HarRoot> _createHarRootFromFile(String relativeFilePath) async {
  final file = File(relativeFilePath);
  final harJson = jsonDecode(await file.readAsString()) as Map<String, dynamic>;
  return HarRoot.fromJson(harJson);
}
