import 'package:flutter/material.dart';
import 'package:projeto/app/injection.dart';

import 'app/my_app.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}

/*void main() async{
  await buscarDados();
  print('Carrega a tela'); 
  print('botões');
  print('campos');
  print('imagens');
}

Future buscarDados(){
  return Future.delayed(Duration(seconds: 5), ()=> print('Carregou os dados....'));
}*/

