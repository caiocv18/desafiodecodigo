import 'dart:io';

void main() {
  final scanner = Scanner();
  final dataInicial = scanner.nextLine();
  final dataFinal = scanner.nextLine();

  final sistemaAcionistas = SistemaAcionistas();
  final analises = sistemaAcionistas.obterAnalisesDesempenho(dataInicial, dataFinal);

  for (final analise in analises) {
    print(analise);
  }
}

class Scanner {
  final _input = stdin;

  String nextLine() {
    return _input.readLineSync()!;
  }
}

class SistemaAcionistas {
  List<String> obterAnalisesDesempenho(String dataInicialStr, String dataFinalStr) {
    final dataInicial = _parseDate(dataInicialStr);
    final dataFinal = _parseDate(dataFinalStr);

    final analises = <Analise>[
      Analise(_parseDate('01/01/2023'), 'Analise de Desempenho Financeiro'),
      Analise(_parseDate('15/02/2023'), 'Analise de Riscos e Exposicoes'),
      Analise(_parseDate('31/03/2023'), 'Analises Corporativas'),
      Analise(_parseDate('01/04/2023'), 'Analise de Politicas e Regulamentacoes'),
      Analise(_parseDate('15/05/2023'), 'Analise de Ativos'),
      Analise(_parseDate('30/06/2023'), 'Analise de Inovacao e Tecnologia'),
    ];

    List<String> analisesFiltradas = [];
    for (var analise in analises) {
      DateTime datetimeInicial = _parseDate(dataInicialStr);
      DateTime datetimeFinal = _parseDate(dataFinalStr);
      if((analise.data.isAfter(datetimeInicial) || analise.data.isAtSameMomentAs(datetimeInicial)) && (analise.data.isBefore(datetimeFinal) || analise.data.isAtSameMomentAs(datetimeFinal))){
        analisesFiltradas.add(analise.descricao);
      }
    }
    return analisesFiltradas;
  }

  DateTime _parseDate(String dateStr) {
    final parts = dateStr.split('/');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final year = int.parse(parts[2]);
    return DateTime(year, month, day);
  }
}

class Analise {
  final DateTime data;
  final String descricao;

  Analise(this.data, this.descricao);
}