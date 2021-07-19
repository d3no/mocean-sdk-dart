import 'abstract_mc.dart';
import '../content_builder/wa_photo_content_builder.dart';

class WaSendPhoto extends AbstractMc {
  @override
  String action() {
    return 'send-whatsapp';
  }

  @override
  List requiredKey() {
    return ['from', 'to', 'content'];
  }

  WaSendPhoto from(String id, [String type = 'bot_username']) {
    params['from'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendPhoto to(String id, [String type = 'phone_num']) {
    params['to'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendPhoto content(WaPhotoContentBuilder contentBuilder) {
    params['content'] = contentBuilder.requestData;
    return this;
  }
}
