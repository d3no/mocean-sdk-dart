import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_with_template.dart';

main() {
  group('Testing whatsapp send with template mc', () {
    test('test action return', () {
      expect('send-whatsapp', equals(WaSendWithTemplate().action()));
    });

    test('test required key', () {
      var actual = ['from', 'to', 'content'];
      actual.sort();
      var matcher = WaSendWithTemplate().requiredKey();
      matcher.sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendWithTemplate();
      expect(obj, equals(obj.from('val')));
      expect(obj, equals(obj.to('val')));
      expect(
        obj,
        equals(
          obj.content(
            WaTemplateContentBuilder().waTemplate(
              WaTextTemplate().language('en').bodyParams(['text']).name('name'),
            ),
          ),
        ),
      );
    });

    test('test required validation', () {
      var obj = WaSendWithTemplate();
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
            WaTemplateContentBuilder().waTemplate(
              WaTextTemplate().language('en').bodyParams(['text']).name('name'),
            ),
          ),
        ),
      );
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value', () {
      var contentBuilder = WaTemplateContentBuilder().waTemplate(
        WaTextTemplate().language('en').bodyParams(['text']).name('name'),
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
      var obj =
          WaSendWithTemplate().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}
