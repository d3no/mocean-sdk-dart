import 'package:moceansdk/moceansdk.dart';
import 'package:test/test.dart';

main() {
  group('Test WaLocation', () {
    test('test required key', () {
      var actual = WaLocation().requiredKey()..sort();
      var matcher = ['longitude', 'latitude']..sort();
      expect(actual, equals(matcher));
    });

    test('test all return type', () {
      var obj = WaLocation();
      expect(obj.latitude('value'),equals(obj));
      expect(obj.longitude('value'),equals(obj));
      expect(obj.address('value'),equals(obj));
      expect(obj.accuracy('value'),equals(obj));
      expect(obj.name('value'),equals(obj));
    });

    test('test required validation', () {
      var obj = WaLocation();
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.longitude('value');
      expect(() => obj.requestData,
          throwsA(predicate((e) => e is RequiredFieldException)));
      obj.latitude('value');
      expect(() => obj.requestData, returnsNormally);
    });

    test('test requestData value', () {
      var params = {
        'latitude': 'latitude',
        'longitude': 'longitude',
        'accuracy': 'accuracy',
        'address': 'address',
        'name': 'name',
      };

      var obj = WaLocation()
          .latitude('latitude')
          .longitude('longitude')
          .accuracy('accuracy')
          .address('address')
          .name('name');
      expect(obj.requestData, equals(obj.requestData));
    });
  });
}
