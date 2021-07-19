import 'package:moceansdk/src/modules/command/mc/wa_send_text.dart';
import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main(){
  group('Test whatsapp send text mc', (){
    test('test action return', () {
      expect('send-whatsapp', equals(WaSendText().action()));
    });

    test('test required key', () {
      var actual = WaSendText().requiredKey()..sort();
      var matcher = ['from', 'to', 'content']..sort();
      expect(actual, equals(matcher));
    });

    //TODO continue here
    test('test return type', (){
      var obj = WaSendText();
      expect(obj.from('val'), equals(obj));
      expect(obj.to('val'), equals(obj));
      expect(obj.content(WaTextContentBuilder().text('val')), equals(obj));
    });

    test('test requestData value',(){
      var contentBuilder = WaTextContentBuilder().text('text');
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
      var obj = WaSendText().from('from').to('to').content(contentBuilder);

      expect(obj.requestData, equals(params));
    });
  });
}