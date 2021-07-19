import 'abstract_mc.dart';
import '../content_builder/wa_video_content_builder.dart';

class WaSendVideo extends AbstractMc {
  @override
  String action() {
    return 'send-whatsapp';
  }

  @override
  List requiredKey() {
    return ['from', 'to', 'content'];
  }

  WaSendVideo from(String id, [String type = 'bot_username']) {
    params['from'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendVideo to(String id, [String type = 'phone_num']) {
    params['to'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendVideo content(WaVideoContentBuilder contentBuilder) {
    params['content'] = contentBuilder.requestData;
    return this;
  }
}
