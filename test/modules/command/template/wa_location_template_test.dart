import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp location template', () {
    test('test type value', () {
      expect(WaLocationTemplate().type(), equals('location'));
    });

    test('test required key', () {
      var actual = WaLocationTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value', () {
      var obj = WaLocationTemplate();
      expect(obj.name('val'), equals(obj));
      expect(obj.language('val'), equals(obj));
      expect(obj.bodyParams(['val']), equals(obj));
      expect(
        obj.mediaContent(
          WaLocationContentBuilder().location(
            WaLocation().longitude('longitude').latitude('latitude'),
          ),
        ),
        equals(obj),
      );
      expect(obj.headerParams(['val']), equals(obj));
      expect(obj.waButtons([WaCallButton()]), equals(obj));
    });

    test('test required key validation', () {
      var obj = WaLocationTemplate();
      obj.name('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.language('val');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.bodyParams(['val']);
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.mediaContent(
        WaLocationContentBuilder().location(
          WaLocation().longitude('longitude').latitude('latitude'),
        ),
      );
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value', () {
      var contentBuilder = WaLocationContentBuilder().location(
        WaLocation().longitude('longitude').latitude('latitude'),
      );
      var params = {
        'name': 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'media_content': contentBuilder.requestData,
        'header_params': ['headerParams'],
        'type': 'location',
      };

      var obj = WaLocationTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .mediaContent(contentBuilder)
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));
    });
  });
}
