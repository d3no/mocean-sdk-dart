import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_document.dart';

main(){
  group('Testing whatsapp send document mc', (){
    test('test action return', () {
      expect(WaSendDocument().action(), equals('send-whatsapp'));
    });

    test('test required key', () {
      var actual = WaSendDocument().requiredKey()..sort();
      var matcher = ['from', 'to', 'content']..sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendDocument();
      expect(obj.from('val'), equals(obj));
      expect(obj.to('val'), equals(obj));
      expect(obj.content(WaDocumentContentBuilder().richMediaUrl('val')), equals(obj));
    });

    test('test required validation', (){
      var obj = WaSendDocument();
      obj.from('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.to('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.content(WaDocumentContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value',(){
      var contentBuilder = WaDocumentContentBuilder().richMediaUrl('url');
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
      var obj = WaSendDocument().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}