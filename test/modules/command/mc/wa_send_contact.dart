import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_contact.dart';

main() {
  group('Testing whatsapp send contact mc', () {
    test('test action return', () {
      expect(WaSendContact().action(), equals('send-whatsapp'));
    });

    test('test required key', () {
      var actual = WaSendContact().requiredKey()..sort();
      var matcher = ['from', 'to', 'content']..sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendContact();
      expect(obj.from('val'), equals(obj));
      expect(obj.to('val'), equals(obj));
      expect(
        obj,
        equals(
          obj.content(
            WaContactContentBuilder().contactDetail(
              WaContact()
                  .firstName('firstName')
                  .lastName('lastName')
                  .fullName('fullName')
                  .phoneNum('phoneNum'),
            ),
          ),
        ),
      );
    });

    test('test required validation', () {
      var obj = WaSendContact();
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
            WaContactContentBuilder().contactDetail(
              WaContact()
                  .firstName('firstName')
                  .lastName('lastName')
                  .fullName('fullName')
                  .phoneNum('phoneNum'),
            ),
          ),
        ),
      );
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value', () {
      var contentBuilder = WaContactContentBuilder().contactDetail(
        WaContact()
            .firstName('firstName')
            .lastName('lastName')
            .fullName('fullName')
            .phoneNum('phoneNum'),
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
      var obj = WaSendContact().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}
