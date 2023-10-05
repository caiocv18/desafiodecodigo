import 'package:desafiosdecodigo/desafiosdecodigo.dart';
import 'package:test/test.dart';

import '../bin/exercicio1.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
  test('Exercício 1 - Saldo atual 200 e sacando 100 sem depositar nada, esperando 100 reais no saldo atualizado', (){
    expect(resolucao(saldoAtual: 200, valorDeposito: 0, valorRetirada: 100), 'Saldo atualizado na conta: 100.0');
  });
}
