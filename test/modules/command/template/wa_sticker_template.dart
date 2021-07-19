import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp sticker template', () {
    test('test type value', () {
      expect(WaStickerTemplate().type(), equals('audio'));
    });

    test('test required key', () {
      var actual = WaStickerTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value',(){
      var obj = WaStickerTemplate();
      obj.name('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.language('val');
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.bodyParams(['val']);
      expect(() => obj.requestData, throwsA(predicate((e) => e is RequiredFieldException)));
      obj.mediaContent(WaStickerContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value',(){
      var contentBuilder = WaStickerContentBuilder().richMediaUrl('url');
      var params = {
        'name' : 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'media_content': contentBuilder.requestData,
        'header_params': ['headerParams'],
        'type': 'sticker',
      };

      var obj = WaStickerTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .mediaContent(contentBuilder)
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));

    });

  });
}
