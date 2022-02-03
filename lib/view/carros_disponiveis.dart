import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:locadora_carros/view/dashboard.dart';
import 'package:locadora_carros/view/faq.dart';
import 'package:locadora_carros/view/quem_somos.dart';
import 'package:locadora_carros/view/solicitacao_aluguel.dart';

class CarrosDisponiveis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_car)),
          ]),
          title: Text("Locarros - Carros disponiveis"),
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
        body: const TabBarView(
          children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Celta 1.4, 2008 - 4 Portas\n"
                    "Golf 1.6, 2000 - 4 Portas\n"
                    "Celta life 1.0, 2009 - 2 Portas\n"
                    "Meriva 1.4, 2004 - 4 Portas\n"
                    "Clio Sedan 1.0, 2007 - 4 Portas\n"
                    "Fiesta sedan 1.0, 2008 - 4 Portas\n"
                    "Voyage 1.0, 2009 - 4 Portas\n"
                    "Corsa hatch 1.6, 2008 - 4 Portas\n"
                    "Palio Fire 1.0, 2008 - 2 Portas\n"
                    "Corsa Classic 1.0, 2007 - 4 Portas\n"
                    "Gol 1.0, 2005 - 4 Portas\n"
                    "C3 1.6, 2004 - 4 Portas\n"
                    "Parati 1.0, 2003 - 4 Portas\n"
                    "Ka 1.0, 2009 - 2 Portas\n"
                    "Meriva 1.8, 2008 - 4 Portas\n"
                    "Fiat Mille 1.0, 2010 - 4 Portas\n"
                    "Fox 1.0, 2009 - 2 Portas\n"
                    "Peugeot 206 1.5, 2008 - 4 Portas\n"
                    "Logan 1.0, 2009 - 4 Portas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                ),
                ),
            ),
          ),
          ],
        ),
      ),
    ));
  }
}
