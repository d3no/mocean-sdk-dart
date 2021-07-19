import 'abstract_content_builder.dart';

class WaAudioContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'audio';
  }

  @override
  List requiredKey() {
    return ['rich_media_url'];
  }

  WaAudioContentBuilder richMediaUrl(String url) {
    params['rich_media_url'] = url;
    return this;
  }

  WaAudioContentBuilder text(String text) {
    params['text'] = text;
    return this;
  }
}
