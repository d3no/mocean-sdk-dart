import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp video template', () {
    test('test type value', () {
      expect(WaVideoTemplate().type(), equals('audio'));
    });

    test('test required key', () {
      var actual = WaVideoTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value',(){
      var obj = WaVideoTemplate();
      obj.name('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.language('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.bodyParams(['val']);
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.mediaContent(WaVideoContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value',(){
      var contentBuilder = WaVideoContentBuilder().richMediaUrl('url');
      var params = {
        'name' : 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'media_content': contentBuilder.requestData,
        'header_params': ['headerParams'],
        'type': 'video',
      };

      var obj = WaVideoTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .mediaContent(contentBuilder)
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));

    });

  });
}
