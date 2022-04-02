import 'package:flutter/material.dart';
import 'package:bytebank/src/widgets/GenericTextField.dart';
import 'package:bytebank/src/models/Transferencia.dart';

/* FEATURE DE TRANSFERENCIAS | EXTRATOS */

// Responsavel por incluir a nova transferencia
class Formulario_Transferencia extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(right: 15.0),
            child: Image.asset('images/bytebank.png',
                fit: BoxFit.fill, height: 10),
          ),
          Text("Transferência"),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(controlador: _controladorCampoValor,
              label: 'Valor',
              hint: 'R\$ 0,00',
              icone: Icons.monetization_on,
              type: TextInputType.number,
            ),
            Editor(controlador: _controladorDescricao,
              label: 'Descrição',
              hint: 'Exemplo',
              type: TextInputType.text,
            ),
            ElevatedButton(
                onPressed: () => _criaTransferencia(context),
                child: Text("Confirmar"))
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final double? valor = double.tryParse(
        _controladorCampoValor.text);
    final String descricao = _controladorDescricao.text;
    if (valor != null && descricao != null) {
      final transferenciaCriada = Transferencia(valor, descricao);
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}

// Mostra as transf na tela
class Lista_Extrato extends StatefulWidget {
  final List<Transferencia> _extratos = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return ListaExtratosState();
  }
}

class ListaExtratosState extends State<Lista_Extrato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(right: 15.0),
            child: Image.asset('images/bytebank.png',
                fit: BoxFit.fill, height: 10),
          ),
          Text("Extrato"),
        ]),
      ),
      body: ListView.builder(
        itemCount: widget._extratos.length,
        itemBuilder:(context, indice) {
          final extrato = widget._extratos[indice];
          return Item_Extrato(extrato);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future future = Navigator.push(
              context, MaterialPageRoute(builder: (context) {
            return Formulario_Transferencia();
          }));
          future.then((transfRecebida) {
            if (transfRecebida != null) {
              setState(() =>widget._extratos.add(transfRecebida));
            }
          });
        },
        tooltip: 'Nova Transferência',
        child: const Icon(Icons.add),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// Um dos Cards de extrato
class Item_Extrato extends StatelessWidget {
  final Transferencia _transferencia;

  Item_Extrato(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('R\$ ' + _transferencia.valor.toStringAsFixed(2),
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6),
          subtitle: Text(_transferencia.descricao
              .toString()), // mas se tiver variável dentro nem faz sentido chamar ele de const
        ));
  }
}


