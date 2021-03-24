import 'dart:io';
import 'dart:math';

String template = 'xxxx-xxxx-xxxx';
Random random = new Random();

alternateRandom() {
  int zeroToNine = random.nextInt(58 - 48) + 48;
  int aUppertoZUpper = random.nextInt(91 - 65) + 65;
  int aLowerToALower = random.nextInt(123 - 97) + 97;
  var asciiInterval = [zeroToNine, aUppertoZUpper, aLowerToALower];

  return String.fromCharCode(
      asciiInterval[random.nextInt(asciiInterval.length)]);
}

void main() {
  String token = '';
  for (var i = 0; i < template.length; i++) {
    token = token + template[i].replaceAll('x', alternateRandom());
  }

  stdout.writeln(token);
}
