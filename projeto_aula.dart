import 'dart:io';

void main(List<String> arguments) {

  imprimirPessoa( (){
    print('Bom dia !');
  });
  
}

void imprimirPessoa(Function funcao){
  funcao();
  print("Tudo bem ?");
}

void imprimirOla(String nome, [int opcao=0]){

  print('Olá $nome ! ${(opcao == 0) ? ('Tudo bem ?') : 'Como vai ?'}');

}

//Função sem retorno e sem parametro
void imprimir(){
  print("Olá pessoal !!!");
}

//Função sem retorno e com parametro
void imprimirNome(String nome){
  print("Olá $nome !!");
}

//Função com retorno e sem parametro
String devolverOla(){
  return 'Olá Pessoal !!';
}

String devolverOla2() => 'Olá pessoal !';

//Função com retorno e com parametro
String devolverOlaNome(String nome){
  return 'Olá $nome !';
}