library contact_list.components.json_export;

import 'package:angular2/angular2.dart';
import 'package:contact_list/services/contacts.dart';
import 'dart:convert';

@Component(
    selector: 'json-export',
    template: '''
    <code>
    {{asJson()}}
    <code>
    ''')
class JsonExport {
  final Contacts data;

  JsonExport(this.data);

  String asJson() => JSON.encode(data);
}
