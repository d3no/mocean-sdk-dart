import 'package:test/test.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/modules/command/mc/wa_send_video.dart';

main(){
  group('Testing whatsapp send video mc', (){
    test('test action return', () {
      expect(WaSendVideo().action(), equals('send-whatsapp'));
    });

    test('test required key', () {
      var actual = WaSendVideo().requiredKey()..sort();
      var matcher = ['from', 'to', 'content']..sort();
      expect(actual, equals(matcher));
    });

    test('test return type', () {
      var obj = WaSendVideo();
      expect(obj.from('val'), equals(obj));
      expect(obj.to('val'), equals(obj));
      expect(obj, equals(obj.content(WaVideoContentBuilder().richMediaUrl('val'))));
    });

    test('test required validation', (){
      var obj = WaSendVideo();
      obj.from('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.to('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.content(WaVideoContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value',(){
      var contentBuilder = WaVideoContentBuilder().richMediaUrl('url');
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
      var obj = WaSendVideo().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });

  });
}