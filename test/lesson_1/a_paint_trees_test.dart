import 'package:dart_application_2/lesson_1/a_paint_trees.dart';
import 'package:test/test.dart';

void main() {
  late Solution sol;
  int p, v, q, m;

  setUpAll(() {
    sol = Solution();
  });

  tearDown(() {
    p = 0;
    v = 0;
    q = 0;
    m = 0;
  });

  group('A. Paint trees\n', () {
    test(
      '0 7\n'
      '12 5\n'
      'should return 25\n',
      () {
        // Given
        p = 0;
        v = 7;
        q = 12;
        m = 5;

        // When
        final result = sol.calculateCountOfPaintedTrees(p, v, q, m);

        // Then
        expect(result, 25);
      },
    );

    test(
      '0 7\n'
      '1 5\n'
      'should return 15\n',
      () {
        // Given
        p = 0;
        v = 7;
        q = 1;
        m = 5;

        // When
        final result = sol.calculateCountOfPaintedTrees(p, v, q, m);

        // Then
        expect(result, 15);
      },
    );
  });
}
