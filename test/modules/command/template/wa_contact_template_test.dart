import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test whatsapp contact template', () {
    test('test type value', () {
      expect(WaContactTemplate().type(), equals('contact_detail'));
    });

    test('test required key', () {
      var actual = WaContactTemplate().requiredKey()..sort();
      var matcher = ['name', 'language', 'body_params', 'media_content']
        ..sort();
      expect(actual, equals(matcher));
    });

    test('test return value', () {
      var obj = WaContactTemplate();
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
        WaContactContentBuilder().contactDetail(
          WaContact()
              .firstName('firstName')
              .lastName('lastName')
              .fullName('firstName')
              .phoneNum('phoneNum'),
        ),
      );
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requiredData value', () {
      var contentBuilder =  WaContactContentBuilder().contactDetail(
        WaContact()
            .firstName('firstName')
            .lastName('lastName')
            .fullName('firstName')
            .phoneNum('phoneNum'),
      );
      var params = {
        'name': 'name',
        'language': 'language',
        'body_params': ['bodyParams'],
        'media_content': contentBuilder.requestData,
        'header_params': ['headerParams'],
        'type': 'contact_detail',
      };

      var obj = WaContactTemplate()
          .name('name')
          .language('language')
          .bodyParams(['bodyParams'])
          .mediaContent(contentBuilder)
          .headerParams(['headerParams']);

      expect(obj.requestData, equals(params));
    });
  });
}
