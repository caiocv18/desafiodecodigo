import 'dart:io';

void main() {

  double saldoAtual = double.parse(stdin.readLineSync()!);
  double valorDeposito = double.parse(stdin.readLineSync()!);
  double valorRetirada = double.parse(stdin.readLineSync()!);

  double saldoAtualizado = saldoAtual + (valorDeposito - valorRetirada);
  print('Saldo atualizado na conta: ${saldoAtualizado.toStringAsFixed(1)}');
}