import 'dart:io';

void main() {
  // Entrada de dados
  int saldoTotal = int.parse(stdin.readLineSync()!);
  int valorSaque = int.parse(stdin.readLineSync()!);
  int novoSaldo = 0;

  if(saldoTotal >= valorSaque){
    novoSaldo = saldoTotal - valorSaque;
    print("Saque realizado com sucesso. Novo saldo: $novoSaldo");
  }else{
    novoSaldo = saldoTotal;
    print("Saldo insuficiente. Saque nao realizado!");
  }
}