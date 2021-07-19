import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp audio template', () {
    test('test type value', () {
      expect(WaAudioTemplate().type(), equals('audio'));
    });

    test('test required key', () {
      var actual = WaAudioTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value',(){
      var obj = WaAudioTemplate();
      obj.name('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.language('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.bodyParams(['val']);
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.mediaContent(WaAudioContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value',(){
      var contentBuilder = WaAudioContentBuilder().richMediaUrl('url');
      var params = {
        'name' : 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'media_content': contentBuilder.requestData,
        'header_params': ['headerParams'],
        'type': 'audio',
      };

      var obj = WaAudioTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .mediaContent(contentBuilder)
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));

    });

  });
}
