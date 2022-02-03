import 'package:flutter/material.dart';
import 'package:locadora_carros/models/solicitacao_enviada.dart';
import 'package:locadora_carros/view/carros_disponiveis.dart';
import 'package:locadora_carros/view/dashboard.dart';
import 'package:locadora_carros/view/faq.dart';
import 'package:locadora_carros/view/quem_somos.dart';

class SolicitacaoAluguel extends StatefulWidget {
  @override
  State<SolicitacaoAluguel> createState() => _SolicitacaoAluguelState();
}

class _SolicitacaoAluguelState extends State<SolicitacaoAluguel> {
  final TextEditingController _nomeController = TextEditingController();

  final TextEditingController _cpfController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _carroController = TextEditingController();

  final TextEditingController _dataIController = TextEditingController();

  final TextEditingController _dataFController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alugue já!"),
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
              ),ListTile(
                trailing: Icon(
                  Icons.business,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: const Text("Quem Somos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 24,
                  ),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => QuemSomos(),
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
            //NOME COMPLETO
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nomeController,
                style: TextStyle(
                  fontSize: 22.0,
                ),
                decoration: InputDecoration(
                  labelText: "Nome completo:",
                ),
              ),
            ),

            //CPF
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _cpfController,
                style: TextStyle(
                  fontSize: 22.0,
                ),
                decoration: InputDecoration(
                  labelText: "CPF:",
                  hintText: "000.000.000-00",
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //Telefone
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                  fontSize: 22.0,
                ),
                decoration: InputDecoration(
                  labelText: "Telefone:",
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //CARTEIRA DE MOTORISTA
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  labelText: "Carteira de motorista:",
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //DATA DE NASCIMENTO
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                    labelText: "Data de nascimento:", hintText: "01/01/1990"),
                keyboardType: TextInputType.datetime,
              ),
            ),

            //E-MAIL
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _emailController,
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  labelText: "E-mail",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            //CEP
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  labelText: "CEP",
                  hintText: "00000-000",
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //ENDEREÇO
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                  fontSize: 22.0,
                ),
                decoration: InputDecoration(
                  labelText: "Endereço completo",
                  hintText:
                      "Ex: Rua locadora veiculos, 1000 - Jardim São Paulo - São Paulo.",
                ),
              ),
            ),

            //NOME DO CARRO
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _carroController,
                style: TextStyle(
                  fontSize: 22.0,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.car_rental),
                  labelText: "Nome do carro:",
                  hintText: "Celta 1.4, 2008 - 4 portas",
                ),
              ),
            ),

            //DATA INICIAL
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _dataIController,
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today_outlined),
                  labelText: "Data inicial da locação:",
                  hintText: "01/01/2022",
                ),
                keyboardType: TextInputType.datetime,
              ),
            ),

            //DATA FINAL
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _dataFController,
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today_outlined),
                  labelText: "Data final da locação:",
                  hintText: "01/01/2022",
                ),
                keyboardType: TextInputType.datetime,
              ),
            ),

            //Observação
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  labelText: "Observação",
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "*Para maiores informações, entre em contato ou visite nossa loja.",
                style: TextStyle(fontSize: 14.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String nome = _nomeController.text;
                    final String cpf = _cpfController.text;
                    final String email = _emailController.text;
                    final String nomeCarro = _carroController.text;
                    final String dataInicial = _dataIController.text;
                    final String dataFinal = _dataFController.text;

                    final Solicitacao newSolicitacao = Solicitacao(nome, cpf, email, nomeCarro, dataInicial, dataFinal);
                    Navigator.pop(context, newSolicitacao);
                  },
                  child: Text("Enviar Solicitação"),
                ),
              ),
            )
          ],
        ));
  }
}
