import 'abstract_contact.dart';

class WaContact extends AbstractContact {
  @override
  List requiredKey() {
    return ['first_name', 'last_name', 'full_name', 'phone_num'];
  }

  WaContact firstName(String firstName) {
    params['first_name'] = firstName;
    return this;
  }

  WaContact lastName(String lastName) {
    params['last_name'] = lastName;
    return this;
  }

  WaContact fullName(String fullName) {
    params['full_name'] = fullName;
    return this;
  }

  WaContact phoneNum(String phoneNum) {
    params['phone_num'] = phoneNum;
    return this;
  }
}
