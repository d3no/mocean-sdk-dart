import 'abstract_content_builder.dart';
import '../location/wa_location.dart';

class WaLocationContentBuilder extends AbstractContentBuilder {
  @override
  List requiredKey() {
    return ['location'];
  }

  @override
  String type() {
    return 'location';
  }

  WaLocationContentBuilder location(WaLocation location) {
    params['location'] = location.requestData;
    return this;
  }
}
