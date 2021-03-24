import 'dart:core';
import 'dart:io';

var now = DateTime.now();
var year = now.year;
var month = now.month;
var weekday = now.weekday;
var day = now.day;
var hour = now.hour;
var minute = now.minute;
var days = [
  'Lundi',
  'Mardi',
  'Mercredi',
  'Jeudi',
  'Vendredi',
  'SAmedi',
  'Dimanche'
];
var months = [
  'Janvier',
  'Février',
  'Mars',
  'Avril',
  'Mai',
  'Juin',
  'Juillet',
  'Aôut',
  'Septembre',
  'Octobre',
  'Novembre',
  'Décembre'
];

addZeroOrNot() {
  if (minute < 10) {
    return '0${minute}';
  } else {
    return minute;
  }
}

String currentTime =
    'Nous sommes le ${days[weekday]} ${day} ${months[month]} ${year} et il est ${hour}:${addZeroOrNot()}';

void main() {
  stdout.writeln(currentTime);
}
