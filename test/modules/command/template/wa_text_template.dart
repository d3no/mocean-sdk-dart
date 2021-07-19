import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp text template', () {
    test('test type value', () {
      expect(WaTextTemplate().type(), equals('audio'));
    });

    test('test required key', () {
      var actual = WaTextTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value',(){
      var obj = WaTextTemplate();
      obj.name('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.language('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.bodyParams(['val']);
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value',(){
      var params = {
        'name' : 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'header_params': ['headerParams'],
        'type': 'text',
      };

      var obj = WaTextTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));

    });

  });
}
