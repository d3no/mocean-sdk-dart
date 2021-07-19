import 'abstract_mc.dart';
import '../content_builder/wa_audio_content_builder.dart';

class WaSendAudio extends AbstractMc {
  @override
  String action() {
    return 'send-whatsapp';
  }

  @override
  List requiredKey() {
    return ['from', 'to', 'content'];
  }

  WaSendAudio from(String id, [String type = 'bot_username']) {
    params['from'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendAudio to(String id, [String type = 'phone_num']) {
    params['to'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendAudio content(WaAudioContentBuilder contentBuilder) {
    params['content'] = contentBuilder.requestData;
    return this;
  }
}
