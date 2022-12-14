/*Napisz program wypisujący poniższy tekst.

Oto pierwiastki kwadratowe wybranych liczb:

 k       sqrt(k)
 
21       4.582575694955839800
32       5.656854249492380600
53       7.280109889280518100

Koniec programu.*/

import 'dart:io';
import 'dart:math';

void main() {
  List<String> list = <String>['k', 'sqrt(k)', ' ', ' '];
  String? nxt;
  int defgap1 = 0;
  int defgap2 = 0;
  StringBuffer gap1 = StringBuffer();
  StringBuffer gap2 = StringBuffer();

  stdout.writeln('input number');
  nxt = stdin.readLineSync();

  while (nxt != 'stop') {
    if (nxt != null) {
      list.add(nxt);
      int k = int.parse(nxt);
      nxt = sqrt(k).toStringAsFixed(18);
      list.add(nxt);
      stdout.writeln("input another number or 'stop'");
      nxt = stdin.readLineSync();
    }
  }

  for (int i = 0; i < list.length; i = i + 2) {
    if (defgap1 < list[i].length) {
      defgap1 = list[i].length;
    }
  }

  for (int i = 1; i <= list.length; i = i + 2) {
    if (defgap2 < list[i].length) {
      defgap2 = list[i].length;
    }
  }

  print('Oto pierwiastki kwadratowe wybranych liczb: \n');

  for (int j = 0; j < defgap1 - list[0].length; j++) {
    gap1.write(' ');
  }

  for (int j = 0; j < defgap2; j++) {
    gap2.write(' ');
  }

  print(gap1.toString() + list[0] + gap2.toString() + list[1]);
  gap1.clear();
  gap2.clear();

  for (int i = 2; i < list.length; i = i + 2) {
    for (int j = 0; j < defgap1 - list[i].length; j++) {
      gap1.write(' ');
    }
    for (int j = 0; j < (2 * defgap2) - list[i + 1].length; j++) {
      gap2.write(' ');
    }

    print(gap1.toString() + list[i] + gap2.toString() + list[i + 1]);
    gap1.clear();
    gap2.clear();
  }

  print('\nKoniec programu.');
}
