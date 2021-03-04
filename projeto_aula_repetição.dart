import 'projeto_aula.dart';

void main (List<String> arguments) {
  //var nomes = <String>[];
  var nomes = <String>['Jubisclaudo', 'Jubileia', 'Platão', 'Bilu', 'Naelson'];
  nomes.add('Chimanca');
  nomes.insert(0, 'Pneu');
  nomes.removeAt(2);
  var quantidadeElementos = nomes.length;
  print(quantidadeElementos);

  nomes.forEach(print);

/**
  for (var nome in nomes){
    print(nome);
  }**/

/**
  for (var contador=0; contador < quantidadeElementos; contador++){
    print(nomes[contador]);
  }**/

/**
  var contador = 0;
  do{
    print(nomes[contador]);
    contador ++;
  }while(contador < quantidadeElementos);**/

  
}

