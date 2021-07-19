import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp photo template', () {
    test('test type value', () {
      expect(WaPhotoTemplate().type(), equals('photo'));
    });

    test('test required key', () {
      var actual = WaPhotoTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value', () {
      var obj = WaPhotoTemplate();
      expect(obj.name('val'), equals(obj));
      expect(obj.language('val'), equals(obj));
      expect(obj.bodyParams(['val']), equals(obj));
      expect(obj.mediaContent(WaPhotoContentBuilder().richMediaUrl('url')),
          equals(obj));
      expect(obj.headerParams(['val']), equals(obj));
      expect(obj.waButtons([WaCallButton()]), equals(obj));
    });

    test('test required key validation', () {
      var obj = WaPhotoTemplate();
      obj.name('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.language('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.bodyParams(['val']);
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.mediaContent(WaPhotoContentBuilder().richMediaUrl('url'));
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value', () {
      var contentBuilder = WaPhotoContentBuilder().richMediaUrl('url');
      var params = {
        'name': 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'media_content': contentBuilder.requestData,
        'header_params': ['headerParams'],
        'type': 'photo',
      };

      var obj = WaPhotoTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .mediaContent(contentBuilder)
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));
    });
  });
}
