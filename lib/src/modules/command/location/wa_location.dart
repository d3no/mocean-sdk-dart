import 'abstract_location.dart';

class WaLocation extends AbstractLocation {
  @override
  List requiredKey() {
    return ['latitude', 'longitude'];
  }

  WaLocation latitude(String latitude) {
    params['latitude'] = latitude;
    return this;
  }

  WaLocation longitude(String longitude) {
    params['longitude'] = longitude;
    return this;
  }

  WaLocation accuracy(String accuracy) {
    params['accuracy'] = accuracy;
    return this;
  }

  WaLocation address(String address) {
    params['address'] = address;
    return this;
  }

  WaLocation name(String name) {
    params['name'] = name;
    return this;
  }
}
