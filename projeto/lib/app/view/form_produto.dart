import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProdutoForm extends StatelessWidget {

  Widget fieldName(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nome:'
      )
    );
  }

  Widget fieldQuantidade(){
    var mask = MaskTextInputFormatter(mask: '###');
    return TextFormField(
      inputFormatters: [mask],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Quantidade:'
      )
    );
  }

  Widget fieldPreco(){
    var mask = MaskTextInputFormatter(mask: '###.##');
    return TextFormField(
      inputFormatters: [mask],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Preço:',
        hintText: '99.99'
      )
    );
  }

  Widget fieldUrlImage(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Endereço da Foto'
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: null,)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              fieldName(),
              fieldQuantidade(),
              fieldPreco(),
              fieldUrlImage()
            ],
          ),
        ),
      ),
      
    );
  }
}