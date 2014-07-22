library my_tag.my_tag_wrapper;

import 'package:polymer/polymer.dart';

@CustomTag('my-tag-wrapper')
class MyTagWrapperElement extends PolymerElement {
  MyTagWrapperElement.created() : super.created() {
    var mt = shadowRoot.querySelector('my-tag');
    print(mt.outerHtml);
  }
}
