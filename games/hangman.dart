import 'dart:io';
import 'dart:math';

var step = 0;
var end = false;

var step0 = """    
============
""";

var step1 = """   
  ||      
============
""";

var step2 = """
  ||      
  ||      
============
""";

var step3 = """
  ||             
  ||      
  ||      
============
""";

var step4 = """
  ||        
  ||             
  ||      
  ||      
============
""";

var step5 = """
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step6 = """
  ||         
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step7 = """
  ||         
  ||         
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step8 = """
  ||         
  ||         
  ||         
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step9 = """
  =============
  ||         
  ||         
  ||         
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step10 = """
  =============
  ||         |
  ||         
  ||         
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step11 = """
  =============
  ||         |
  ||         |
  ||         
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step12 = """
  =============
  ||         |
  ||         |
  ||         O
  ||        
  ||        
  ||             
  ||      
  ||      
============
""";

var step13 = """
  =============
  ||         |
  ||         |
  ||         O
  ||        -|-
  ||        
  ||             dernière chance!
  ||      
  ||      
============
""";

var step14 = """
  =============
  ||         |
  ||         |
  ||         O
  ||        -|-
  ||        | |
  ||             Perdu!
  ||      
  ||      
============
""";

var steps = [
  step0,
  step1,
  step2,
  step3,
  step4,
  step5,
  step6,
  step7,
  step8,
  step9,
  step10,
  step11,
  step12,
  step13,
  step14
];

var words = [
  'maison',
  'cavalier',
  'ordinateur',
  'nuage',
  'stylo',
  'fleurs',
  'livre',
  'ninja',
  'musique',
  'four',
  'tapis',
  'tracteur'
];

randomWord() {
  Random random = new Random();
  int randomNum = random.nextInt(words.length - 1);
  return words[randomNum];
}

genarateTemplate(word) {
  var template = '';
  for (var i = 0; i < word.length; i++) {
    template = template + '_';
  }
  return template;
}

var word = randomWord();
var test = genarateTemplate(word).split('');
var countGoodAnswer = 0;

goodAnswer(word, character) {
  for (var i = 0; i < word.length; i++) {
    if (word[i] == character) {
      test[i] = word[i];
      countGoodAnswer = countGoodAnswer + 1;
    }
  }
}

badAnswer() {
  if (step != steps.length) {
    stdout.writeln(steps[step]);
    step = step + 1;
  } else {
    stdout.writeln('Dommage!');
    end = true;
  }
}

checkResponse(character, word) {
  var charInWord = word.indexOf(character);
  if (charInWord != -1) {
    return goodAnswer(word, character);
  } else {
    return badAnswer();
  }
}

askQuestion(word) {
  stdout.writeln('tapez une lettre, puis entrée');
  var character = stdin.readLineSync().toString();
  checkResponse(character, word);
}

void main() {
  while (end != true) {
    if (countGoodAnswer == word.length) {
      stdout.writeln('Bravo!');
      end = true;
    } else {
      askQuestion(word);
      stdout.writeln(test.join(''));
    }
  }
}
