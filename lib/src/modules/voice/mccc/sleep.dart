import 'package:moceansdk/src/modules/voice/mccc/abstract_mccc.dart';

class Sleep extends AbstractMccc {
  Sleep([params]) : super(params);

  set duration(int value) {
    this.params['duration'] = value;
  }

  @override
  String action() => 'sleep';

  @override
  List requiredKey() => ['duration'];
}
