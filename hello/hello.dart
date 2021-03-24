import 'dart:io';

void main() {
  stdout.writeln('Type your firstname');
  String input = stdin.readLineSync().toString();
  stdout.writeln('Hello ${input[0].toUpperCase()}${input.substring(1)}!');
}
