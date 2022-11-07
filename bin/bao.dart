import 'dart:io';

import 'package:args/args.dart';
import 'package:bao/bao.dart';

const flutter = 'flutter';

void main(List<String> args) {
  exitCode = 0;
  try {
    final parser = ArgParser()..addFlag(flutter, negatable: false, abbr: 'f');

    ArgResults argResults = parser.parse(args);
    final paths = argResults.rest;
    handleOption(paths);
  } catch (e) {
    stdout.writeln('line');
  }
}
