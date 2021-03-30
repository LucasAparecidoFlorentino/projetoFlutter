import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:projeto/app/view/produto_form_back.dart';

class ProdutoForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  Widget fieldName(ProdutoFormBack back){
    return TextFormField(
      validator: back.validateName,
      onSaved: (newValue) =>back.produto.nome = newValue,
      initialValue: back.produto.nome,
      decoration: InputDecoration(
        labelText: 'Nome:'
      )
    );
  }

  Widget fieldQuantidade(ProdutoFormBack back){
    var mask = MaskTextInputFormatter(mask: '###');
    return TextFormField(
      inputFormatters: [mask],
      onSaved: (newValue) =>back.produto.quantidade = int.parse(newValue),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Quantidade:'
      )
    );
  }

  void validator() => validator;

  Widget fieldPreco(ProdutoFormBack back){
    var mask = MaskTextInputFormatter(mask: '##.##');
    return TextFormField(
      inputFormatters: [mask],
      onSaved: (newValue) =>back.produto.preco = double.parse(newValue),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Preço:',
        hintText: '99.99'
      )
    );
  }

  Widget fieldUrlImage(ProdutoFormBack back){
    return TextFormField(
      onSaved: (newValue) =>back.produto.urlAvatar = newValue,
      initialValue: back.produto.urlAvatar,
      decoration: InputDecoration(
        labelText: 'Endereço da Foto'
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    var _back = ProdutoFormBack(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
        actions: [
          IconButton(icon: Icon(Icons.save), 
          onPressed: (){
            _form.currentState.validate();
            _form.currentState.save();
            if(_back.isValid){
              _back.save();
              Navigator.of(context).pop();
            }
          })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: Column(
            children: [
              fieldName(_back),
              fieldQuantidade(_back),
              fieldPreco(_back),
              fieldUrlImage(_back)
            ],
          ),
        ),
      ),
      
    );
  }
}