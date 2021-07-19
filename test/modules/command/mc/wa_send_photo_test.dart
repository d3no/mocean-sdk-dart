import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_photo.dart';

main(){
  group('Testing whatsapp send photo mc', (){
    test('test action return', () {
      expect(WaSendPhoto().action(), equals('send-whatsapp'));
    });

    test('test required key', () {
      var actual = WaSendPhoto().requiredKey()..sort();
      var matcher = ['from', 'to', 'content']..sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendPhoto();
      expect(obj.from('val'), equals(obj));
      expect(obj.to('val'), equals(obj));
      expect(obj.content(WaPhotoContentBuilder().richMediaUrl('val')), equals(obj));
    });

    test('test required validation', (){
      var obj = WaSendPhoto();
      obj.from('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.to('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.content(WaPhotoContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value',(){
      var contentBuilder = WaPhotoContentBuilder().richMediaUrl('url');
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
      var obj = WaSendPhoto().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}