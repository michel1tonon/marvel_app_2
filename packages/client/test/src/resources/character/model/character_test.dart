import 'dart:convert';

import 'package:client/client.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../responses.dart';

void main() {
  group('Character', () {
    test('it supports compare', () {
      final characterA = Character.fromJson(jsonDecode(validCharacterResponse));
      final characterB = Character.fromJson(jsonDecode(validCharacterResponse));

      expect(characterA, equals(characterB));
    });
  });
}
