import 'abstract_content_builder.dart';
import '../contact/wa_contact.dart';

class WaContactContentBuilder extends AbstractContentBuilder {
  @override
  List requiredKey() {
    return ['contact_detail'];
  }

  @override
  String type() {
    return 'contact_detail';
  }

  WaContactContentBuilder contactDetail(WaContact contactDetail) {
    params['contact_detail'] = contactDetail.requestData;
    return this;
  }
}
