import 'package:bytebank_persistencia_Flutter/screens/contacts_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: trabalha fazendo o alinhamento vertical, o .spaceBetween cria o espaçamento entre os widgets
        crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: faz o alinhamento no eixo horizontal, .start define que ira começar no ponto 0(canto esquerdo)
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              //no caso ao se utilizar o inkWell, quem define as cores do card/container é o Material
              child: InkWell( // adiciona opçoes de evento de click em um widget que nao tem onpressed, porem necessita estar em um widget Material para criar efeito de click
                //possivel usar GestureDetector para eventos de click e arrasto em um widget que nao tem onpressed tb, porem nao tem efeito visual de click
                onTap: () {
                  //adiciona a opção de efetuar um efento apos 1 click
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContactList(),
                    ),
                  ); //Navigator.of esta sendo usado para chamar a tela de contact,
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 100,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      Text(
                        'Contacts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
