library my_tag.my_tag;

import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('my-tag')
class MyTagElement extends PolymerElement {
  ParagraphElement get p => this.querySelector('p');

  MyTagElement.created() : super.created() {
    var pe = p;
    var t = (pe == null) ? null : pe.text;
    print('my-tag p: ${t}');
    print('my-tag outerHtml: ${outerHtml}');
  }
}
