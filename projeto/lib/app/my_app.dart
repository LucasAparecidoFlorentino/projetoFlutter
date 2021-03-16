import 'package:flutter/material.dart';
import 'package:projeto/app/view/form_produto.dart';
import 'package:projeto/app/view/lista_produtos.dart';

import 'view/lista_produtos.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const FORM_PRODUTO = 'form-produto';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        HOME:(context)=>ListaProdutos(),
        FORM_PRODUTO:(context)=>ProdutoForm()
      },
    );
  }
}