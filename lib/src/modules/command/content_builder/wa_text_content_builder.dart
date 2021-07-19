import 'abstract_content_builder.dart';

class WaTextContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'text';
  }

  @override
  List requiredKey() {
    return ['text'];
  }

  WaTextContentBuilder text(String text) {
    params['text'] = text;
    return this;
  }
}
