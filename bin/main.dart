import 'dart:io';

import 'package:dart_application_2/yandex_5/lesson_1/a_paint_trees.dart';

void main(List<String> arguments) {
  final sol = Solution();
  final input = _readFromFile();
  final input1 = input.replaceAll('\n', ' ').trim().split(' ');
  final p = int.parse(input1[0]);
  final v = int.parse(input1[1]);
  final q = int.parse(input1[2]);
  final m = int.parse(input1[3]);

  final result = sol.calculateCountOfPaintedTrees(p, v, q, m);

  _writeToFile(result.toString());
}

String _readFromFile() {
  // Open the file in read mode
  var file = File('input.txt');

  // Read the entire contents of the file as a string
  final content = file.readAsStringSync();

  return content;
}

void _writeToFile(String output) {
  // Open the file in write mode (creates the file if it doesn't exist)
  var file = File('output.txt');

  // Write the content to the file
  file.writeAsStringSync(output);
}
