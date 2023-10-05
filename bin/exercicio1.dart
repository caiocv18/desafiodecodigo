String resolucao({required double saldoAtual, required double valorDeposito, required double valorRetirada}) {
  double saldoAtualizado = saldoAtual + (valorDeposito - valorRetirada);
  return 'Saldo atualizado na conta: ${saldoAtualizado.toStringAsFixed(1)}';
}