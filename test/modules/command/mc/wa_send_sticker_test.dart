import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_sticker.dart';

main(){
  group('Testing whatsapp send sticker mc', (){
    test('test action return', () {
      expect('send-whatsapp', equals(WaSendSticker().action()));
    });

    test('test required key', () {
      var actual = ['from', 'to', 'content'];
      actual.sort();
      var matcher = WaSendSticker().requiredKey();
      matcher.sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendSticker();
      expect(obj, equals(obj.from('val')));
      expect(obj, equals(obj.to('val')));
      expect(obj, equals(obj.content(WaStickerContentBuilder().richMediaUrl('val'))));
    });

    test('test required validation', (){
      var obj = WaSendSticker();
      obj.from('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.to('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.content(WaStickerContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value',(){
      var contentBuilder = WaStickerContentBuilder().richMediaUrl('url');
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
      var obj = WaSendSticker().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}