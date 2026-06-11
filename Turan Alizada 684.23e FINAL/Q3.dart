class NavigatorStack {
  final List<String> _stack = [];

  void push(String route) {
    _stack.add(route);
    print('push $route');
    printStack();
  }

  void pop() {
    if (_stack.isEmpty) {
      print('pop failed: stack is empty');
      printStack();
      return;
    }

    final removedRoute = _stack.removeLast();
    print('pop $removedRoute');
    printStack();
  }

  void pushReplacement(String route) {
    if (_stack.isNotEmpty) {
      final removedRoute = _stack.removeLast();
      print('pushReplacement $route, replacing $removedRoute');
    } else {
      print('pushReplacement $route, stack was empty');
    }

    _stack.add(route);
    printStack();
  }

  String? get currentRoute {
    if (_stack.isEmpty) {
      return null;
    }

    return _stack.last;
  }

  void printStack() {
    print('Stack: $_stack');
    print('');
  }
}

void main() {
  final navigatorStack = NavigatorStack();

  navigatorStack.push('/home');
  navigatorStack.push('/details');
  navigatorStack.push('/checkout');

  navigatorStack.pop();

  navigatorStack.pushReplacement('/confirmation');

  print('Current top route: ${navigatorStack.currentRoute}');
}

// OUTPUT : 

/*
push /home
Stack: [/home]

push /details
Stack: [/home, /details]

push /checkout
Stack: [/home, /details, /checkout]

pop /checkout
Stack: [/home, /details]

pushReplacement /confirmation, replacing /details
Stack: [/home, /confirmation]

Current top route: /confirmation
*/