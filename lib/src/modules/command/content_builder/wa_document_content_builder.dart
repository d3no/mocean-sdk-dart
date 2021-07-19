import 'abstract_content_builder.dart';

class WaDocumentContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'document';
  }

  @override
  List requiredKey() {
    return ['rich_media_url'];
  }

  WaDocumentContentBuilder richMediaUrl(String url) {
    params['rich_media_url'] = url;
    return this;
  }

  WaDocumentContentBuilder text(String text) {
    params['text'] = text;
    return this;
  }
}
