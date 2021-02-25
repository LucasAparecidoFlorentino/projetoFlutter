import 'dart:io';

void main(List<String> arguments) {
  print('Informe a sua nota: ');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota);

  print('Informe o % da sua presença: ');
  var entradaPresenca = stdin.readLineSync();
  var presenca = int.parse(entradaPresenca);

  if(presenca >= 75){
    if(nota >= 6){
      print('Aprovado');
    }else{
      print('Informe a nota da recuperação: ');
      var entradaRecuperacao = stdin.readLineSync();
      var recuperacao = double.parse(entradaRecuperacao);
      if(recuperacao >= 6){
        print('Aprovado na recuperação');
      }else{
        print('Reprovado na recuperação');
      }
    }

  }else {
    print('Reprovado pela frequência');
  }
}