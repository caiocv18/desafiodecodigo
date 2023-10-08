import 'dart:io';

class Bancaria {
  int _numeroConta;
  String _nomeTitular;
  double _saldo;

  Bancaria(this._numeroConta, this._nomeTitular, this._saldo);

  int getNumeroConta() {
    return _numeroConta;
  }

  String getNomeTitular() {
    return _nomeTitular;
  }

  double getSaldo() {
    return _saldo;
  }

  @override
  String toString() {
    return """
Conta: ${getNumeroConta()}
Titular: ${getNomeTitular()}
Saldo: R\$ ${getSaldo().toStringAsFixed(1)}""";
  }
}

void main() {
  int numeroConta = int.parse(stdin.readLineSync()!);
  String nomeTitular = stdin.readLineSync()!;
  double saldo = double.parse(stdin.readLineSync()!);

  Bancaria conta = Bancaria(numeroConta, nomeTitular, saldo);

  print("Informacoes:\n$conta");

}