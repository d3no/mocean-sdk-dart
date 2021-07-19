import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_location.dart';

main() {
  group('Testing whatsapp send location mc', () {
    test('test action return', () {
      expect(WaSendLocation().action(), equals('send-whatsapp'));
    });

    test('test required key', () {
      var actual = WaSendLocation().requiredKey()..sort();
      var matcher = ['from', 'to', 'content']..sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendLocation();
      expect(obj.from('val'), equals(obj));
      expect(obj.to('val'), equals(obj));
      expect(
        obj,
        equals(
          obj.content(
            WaLocationContentBuilder().location(
              WaLocation().latitude('latitude').longitude('longitude'),
            ),
          ),
        ),
      );
    });

    test('test required validation', () {
      var obj = WaSendLocation();
      obj.from('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.to('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      expect(
        obj,
        equals(
          obj.content(
            WaLocationContentBuilder().location(
              WaLocation().latitude('latitude').longitude('longitude'),
            ),
          ),
        ),
      );
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value', () {
      var contentBuilder = WaLocationContentBuilder().location(
        WaLocation().latitude('latitude').longitude('longitude'),
      );
      var params = {
        'from': {
          'type': 'bot_username',
          'id': 'from',
        },
        'to': {
          'type': 'phone_num',
          'id': 'to',
        },
        'content': contentBuilder.requestData,
        'action': 'send-whatsapp',
      };
      var obj = WaSendLocation().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}
