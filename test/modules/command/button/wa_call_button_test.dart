import 'dart:math';

import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp call button', () {
    test('test button type', () {
      expect(WaCallButton().type(), equals('call'));
    });

    test('test required key', () {
      expect(WaCallButton().requiredKey(), equals([]));
    });

    test('test required key validate', () {
      var obj = WaCallButton();
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value', (){
      var params = {
        'type' : 'call',
      };
      var obj = WaCallButton();
      expect(obj.requestData, equals(params));
    });
  });
}
