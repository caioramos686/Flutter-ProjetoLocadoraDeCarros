import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:locadora_carros/view/api2_view.dart';
import 'package:locadora_carros/view/api_view.dart';
import 'package:locadora_carros/view/carros_disponiveis.dart';
import 'package:locadora_carros/view/faq.dart';
import 'package:locadora_carros/view/quem_somos.dart';
import 'package:locadora_carros/view/solicitacao_aluguel.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locarros - A sua locadora de carros"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(2),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                "\nMenu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.directions_car_outlined,
                size: 30,
                color: Colors.blueAccent,
              ),
              title: const Text(
                "Carros disponiveis",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                ),
              ),
              onTap: () {
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
              title: const Text(
                "Alugue já !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                ),
              ),
              onTap: () {
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
              title: const Text(
                "Quem Somos",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                ),
              ),
              onTap: () {
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
              title: const Text(
                "FAQ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Painel(),
                ));
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.android_outlined,
                size: 30,
                color: Colors.blueAccent,
              ),
              title: const Text(
                "API",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ApiView(),
                ));
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.android_outlined,
                size: 30,
                color: Colors.blueAccent,
              ),
              title: const Text(
                "API 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Api2View(),
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
            child: CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                autoPlay: true,
                height: 200,
              ),
              items: [
                Image.asset("images/shake-hand-3677534_1920.jpg"),
                Image.asset("images/car-5246178_1920.jpg",),
              ],
            ),
          ),
          carros_disponiveis(),
          AlugueJa(),
          quem_somos(),
          Faq(),
        ],
      ),
    );
  }
}

class carros_disponiveis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CarrosDisponiveis()));
          },
          child: Container(
            padding: EdgeInsets.all(5),
            height: 140,
            width: 1000,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.directions_car_outlined,
                  color: Colors.white,
                  size: 100,
                ),
                Text(
                  "Carros Disponiveis",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AlugueJa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SolicitacaoAluguel(),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(5),
            height: 140,
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.car_rental,
                  color: Colors.white,
                  size: 100,
                ),
                Text(
                  "Alugue já!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class quem_somos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => QuemSomos(),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(5),
            height: 140,
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.business,
                  color: Colors.white,
                  size: 100,
                ),
                Text(
                  "Quem somos",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Painel(),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(5),
            height: 140,
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.contact_support,
                  color: Colors.white,
                  size: 100,
                ),
                Text(
                  "FAQ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
