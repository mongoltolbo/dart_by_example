// Auto-generated from main.html.
// DO NOT EDIT.

library main_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import "dart:html";


// Original code


class Book {
  String title;
  num price;
  num numPages;
  bool available;
 
  Book(this.title, this.price, this.numPages, [this.available=true]);
}

List<Book> books = [];
bool get noBooks => books.isEmpty;

bool showBookDetails = true;

emptyBookList() {
  books = []; 
  return false;
}

main() {
  books = [
    new Book("War and Peace", 20.99, 1013),
    new Book("Anna Karenina", 23.99, 1243, false),
    new Book("The Old Man and the Sea", 8.99, 78)
  ]; 
}


// Additional generated code
void init_autogenerated() {
  var _root = autogenerated.document.body;
  final __html0 = new autogenerated.Element.html('<h2>No Books to Display</h2>'), __html1 = new autogenerated.Element.html('<h2>Books:</h2>'), __html2 = new autogenerated.HRElement(), __html3 = new autogenerated.Element.html('<ul>\n        <template id="__e-11"></template>\n      </ul>'), __html4 = new autogenerated.LIElement(), __html5 = new autogenerated.Element.html('<ul style="display:none"></ul>'), __html6 = new autogenerated.Element.html('<ul template="" instantiate="if showBookDetails">\n            <li id="__e-3"></li>\n            <li id="__e-5"></li>\n            <li id="__e-7"></li>\n          </ul>'), __html7 = new autogenerated.Element.html('<div><input type="checkbox" id="__e-13">show details</div>'), __html8 = new autogenerated.Element.html('<div id="emptyBookList"><a href="#" id="__e-15">delete all books</a></div>');
  var __e0, __e17;
  var __t = new autogenerated.Template(_root);
  __e0 = _root.query('#__e-0');
  __t.conditional(__e0, () => noBooks, (__t) {
  __t.addAll([new autogenerated.Text('\n      '),
      __html0.clone(true),
      new autogenerated.Text('\n    ')]);
  });

  __e17 = _root.query('#__e-17');
  __t.conditional(__e17, () => !noBooks, (__t) {
    var __e11, __e12, __e13, __e14, __e15, __e16;
    __e12 = __html3.clone(true);
    __e11 = __e12.query('#__e-11');
    __t.loop(__e11, () => books, (book, __t) {
      var __e10, __e9;
      __e10 = __html4.clone(true);
      var __binding1 = __t.contentBind(() => book.title, false);
      __e9 = __html5.clone(true);
      __t.conditional(__e9, () => showBookDetails, (__t) {
        var __e3, __e5, __e7, __e8;
        __e8 = __html6.clone(true);
        __e3 = __e8.query('#__e-3');
        var __binding2 = __t.contentBind(() => book.price, false);
        __e3.nodes.addAll([new autogenerated.Text('\$'),
            __binding2]);
        __e5 = __e8.query('#__e-5');
        var __binding4 = __t.contentBind(() => book.numPages, false);
        __e5.nodes.addAll([__binding4,
            new autogenerated.Text(' pages')]);
        __e7 = __e8.query('#__e-7');
        var __binding6 = __t.contentBind(() => book.available ? "Available" : "Out of Stock", false);
        __e7.nodes.add(__binding6);
      __t.add(__e8);
      });

      __e10.nodes.addAll([__binding1,
          new autogenerated.Text('\n          '),
          __e9,
          new autogenerated.Text('\n          ')]);
    __t.addAll([new autogenerated.Text('\n          '),
        __e10,
        new autogenerated.Text('\n        ')]);
    });
    __e14 = __html7.clone(true);
    __e13 = __e14.query('#__e-13');
    __t.listen(__e13.onChange, ($event) { showBookDetails = __e13.checked; });
    __t.oneWayBind(() => showBookDetails, (e) { __e13.checked = e; }, false, false);
    __e16 = __html8.clone(true);
    __e15 = __e16.query('#__e-15');
    __t.listen(__e15.onClick, ($event) { emptyBookList(); });
  __t.addAll([new autogenerated.Text('\n      '),
      __html1.clone(true),
      new autogenerated.Text('\n      '),
      __e12,
      new autogenerated.Text(' \n      '),
      __e14,
      new autogenerated.Text(' \n      '),
      __html2.clone(true),
      new autogenerated.Text('\n      '),
      __e16,
      new autogenerated.Text('\n    ')]);
  });

  __t.create();
  __t.insert();
}

//@ sourceMappingURL=main.dart.map