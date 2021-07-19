import 'dart:math';

import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test WaContact ', () {
    test('test required key', () {
      var actual = WaContact().requiredKey()..sort();
      var matcher = ['first_name', 'last_name', 'full_name', 'phone_num']..sort();
      expect(actual, equals(matcher));
    });

    test('test all return type', () {
      var obj = WaContact();
      expect(obj, obj.firstName('val'));
      expect(obj, obj.lastName('val'));
      expect(obj, obj.fullName('val'));
      expect(obj, obj.phoneNum('val'));
    });

    test('test required validation', () {
      var obj = WaContact();

      obj.firstName('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.lastName('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.fullName('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.phoneNum('val');
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value', () {
      var params = {
        'first_name': 'first_name',
        'last_name': 'last_name',
        'full_name': 'full_name',
        'phone_num': 'phone_num',
      };

      var obj = WaContact()
          .firstName('first_name')
          .lastName('last_name')
          .fullName('full_name')
          .phoneNum('phone_num');

      expect(obj.requestData, equals(params));
    });
  });
}
