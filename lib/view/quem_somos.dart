import 'package:flutter/material.dart';
import 'package:locadora_carros/view/carros_disponiveis.dart';
import 'package:locadora_carros/view/dashboard.dart';
import 'package:locadora_carros/view/faq.dart';
import 'package:locadora_carros/view/solicitacao_aluguel.dart';

class QuemSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Locarros - Quem somos"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(2),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Text("\nMenu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),),
              ),
              ListTile(
                trailing: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: const Text("Iniciar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 25,
                  ),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ));
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.directions_car_outlined,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: const Text("Carros disponiveis",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 24,
                  ),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CarrosDisponiveis(),
                  ));
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.car_rental,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: const Text("Alugue já !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 24,
                  ),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SolicitacaoAluguel(),
                  ));
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.contact_support,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: const Text("FAQ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 24,
                  ),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Painel(),
                  ));
                },
              ),
            ],
          ),

        ),

        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 600,
                width: 1000,
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.business,
                      color: Colors.white,
                      size: 120,
                    ),
                    Text(
                      "Bem vindos a Locarros !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "\n Fundada em 2022, a Locarros entrou para o mercado com o objetivo"
                      " de facilitar a vida do cliente para alugar um carro. \n"
                      " Venha conhecer os diversos modelos disponiveis e faça já sua solicitação de"
                      " aluguel, com um simples clique e preenchendo o formulário, sua reserva será"
                      " solicitada e então verificada. Pedimos que aguarde o contato de nossos colaboradores para mais detalhes"
                    " sobre a disponibilidade e também sobre mais detalhes dos veiculos.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
