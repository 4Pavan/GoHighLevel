import 'package:learn_testing/counter.dart';
import 'package:flutter_test/flutter_test.dart';

//Unit Test
void main() {
  test('Counter value should be incremented', () {
    var counter = Counter();
    counter.increment();
    expect(counter.value, 1);
  });
}
