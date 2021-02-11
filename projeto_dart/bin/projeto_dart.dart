import 'package:projeto_dart/projeto_dart.dart' as projeto_dart;
import 'dart:io';

void main(List<String> arguments) {
  print('Informe seu nome: ');
  var nome = stdin.readLineSync();;
  
  print('Informe sua idade: ');
  var entradaIdade = stdin.readLineSync();
  var idade = int.parse(entradaIdade);

  print('Informe o seu salário: ');
  var entradaSalario = stdin.readLineSync();
  var salario = double.parse(entradaSalario);
  print('Meu nome é $nome, minha idade é $idade e meu salario é $salario');
}
