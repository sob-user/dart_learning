import 'dart:io';

revertWord(word) {
  var revertWord = '';
  for (var i = word.length - 1; i >= 0; i--) {
    revertWord = revertWord + word[i];
  }
  stdout.writeln(revertWord);
}

void main() {
  stdout.writeln('tapez un mot');
  var word = stdin.readLineSync().toString();
  revertWord(word);
}
