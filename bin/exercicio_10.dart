import 'dart:io';

void main() {
  final scanner = stdin;

  final entrada = scanner.readLineSync()!;
  final partes = entrada.split(',');

  Transacao transacao;

  transacao = Transacao(partes.elementAt(0), partes.elementAt(1), partes.elementAt(2), double.parse(partes.elementAt(3)));
  transacao.imprimir();
}

class Transacao {
  final String data;
  final String hora;
  final String descricao;
  final double valor;

  Transacao(this.data, this.hora, this.descricao, this.valor);

  void imprimir() {
    print(descricao);
    print(data);
    print(hora);
    print(valor.toStringAsFixed(2));
  }
}