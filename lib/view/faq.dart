import 'package:flutter/material.dart';
import 'package:locadora_carros/view/carros_disponiveis.dart';
import 'package:locadora_carros/view/dashboard.dart';
import 'package:locadora_carros/view/quem_somos.dart';
import 'package:locadora_carros/view/solicitacao_aluguel.dart';

class Painel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FAQ"),
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
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: ExpansionWid(),
        ),
      ),
    );
  }
}

class ExpansionWid extends StatefulWidget {
  @override
  State<ExpansionWid> createState() => _ExpansionWidState();
}

class _ExpansionWidState extends State<ExpansionWid> {
  List<Faq> faqs = [
    Faq(1, "Como recebo o carro?",
        "Todo o processo será informado pelo colaborador via  e-mail.", false),
    Faq(
        2,
        "Quanto tempo para o retorno da solicitação?",
        "Nossos colaboradores entraram em contato via e-mail em até 1 dia útil.",
        false),
    Faq(
        3,
        "Quais cidades e estados atende?",
        "Atualmente em Janeiro de 2022 estamos atendendo somente em São Paulo - SP.",
        false),
    Faq(
        4,
        "Como vem o carro?",
        "O carro vem com 1/4 do tanque abastecido, além de limpo por fora e higienizado por dentro.",
        false),
  ];

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          faqs[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: faqs.map((faq) {
        return ExpansionPanel(
            isExpanded: faq.isExpanded,
            headerBuilder: (bc, status) {
              return Container(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    faq.name,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              );
            },
            body: Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: Text(
                faq.description,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ));
      }).toList(),
    );
  }
}

class Faq {
  late int id;
  late String name;
  late String description;
  late bool isExpanded;

  Faq(this.id, this.name, this.description, this.isExpanded);
}
