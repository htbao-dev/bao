import 'dart:io';

import 'package:args/args.dart';
import 'package:bao/bao.dart';

const flutter = 'flutter';
const flutter1 = 'f1';

void main(List<String> args) {
  exitCode = 0;
  try {
    final parser = ArgParser()
      ..addFlag(flutter, negatable: false, abbr: 'f')
      ..addFlag(flutter1, abbr: 'a');

    ArgResults argResults = parser.parse(args);
    final paths = argResults.rest;
    var opt = argResults.options;
    var newArg = argResults.arguments;
    print('path $paths');
    print('opt $opt');
    print('arg $newArg');
    bao(
      paths,
    );
  } catch (e, s) {
    stdout.writeln('line');
  }
}
