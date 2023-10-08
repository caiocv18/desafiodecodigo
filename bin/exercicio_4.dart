import 'dart:io';
import 'dart:math';

void main() {
  var valorInicial = double.parse(stdin.readLineSync()!);
  var taxaJuros = double.parse(stdin.readLineSync()!);
  var periodo = int.parse(stdin.readLineSync()!);

  var valorFinal;

  valorFinal = valorInicial * (pow((1+taxaJuros), periodo));

  print("Valor final do investimento: R\$ ${valorFinal.toStringAsFixed(2)}");
}