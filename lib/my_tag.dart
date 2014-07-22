library my_tag.my_tag;

import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('my-tag')
class MyTagElement extends PolymerElement {
  ParagraphElement get p => this.querySelector('p');

  MyTagElement.created() : super.created() {
    _printContent(); // print null because the contents are not attached
  }

  @override
  attached() {
    super.attached();
    _printContent(); // print contents
  }

  void _printContent() {
    var pe = p;
    var t = (pe == null) ? null : pe.text;
    print('my-tag p: ${t}');
    print('my-tag outerHtml: ${outerHtml}');
  }
}
