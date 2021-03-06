library main;

import 'package:angular/angular.dart';
import 'package:di/di.dart';

class Item {
  String name;
  Item(this.name);
}

@NgComponent(
    selector: 'my-component',
    publishAs: 'ctrl',
    template: '''<ul><li ng-repeat="value in ctrl.values">{{value.name}}</li></ul>'''
)

class MyComponent {
  List<Item> values = [new Item('1'), new Item('2'), new Item('3'), new Item('4')];

  MyComponent() {
    print('MyComponent');
  }
}


class MyAppModule extends Module {
  MyAppModule() {
    type(MyComponent);
  }
}

void main() {
  ngBootstrap(module: new MyAppModule());
}
