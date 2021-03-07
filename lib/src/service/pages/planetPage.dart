import 'package:flutter/material.dart';
import 'package:planets/src/service/data/planet.dart';

class PlanetPage extends StatelessWidget {
  final Planeta planeta;
  const PlanetPage({this.planeta});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          _SliverAppBar(planetaImagen: planeta.imagen),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 50.0,
            ),
            _ListTile(planeta: planeta),
            _PlanetInfo(planeta: planeta),
            _Footer(size: size, planeta: planeta)
          ]))
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    Key key,
    @required this.size,
    @required this.planeta,
  }) : super(key: key);

  final Size size;
  final Planeta planeta;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: planeta.imagenes.length,
        itemBuilder: (context, index) {
          return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    planeta.imagenes[index],
                    fit: BoxFit.cover,
                  )));
        },
      ),
    );
  }
}

class _PlanetInfo extends StatelessWidget {
  const _PlanetInfo({
    Key key,
    @required this.planeta,
  }) : super(key: key);

  final Planeta planeta;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text(
        '${planeta.descripcion}',
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    Key key,
    @required this.planeta,
  }) : super(key: key);

  final Planeta planeta;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.double_arrow_sharp,
        color: Colors.blueAccent,
        size: 30.0,
      ),
      title: Text('${planeta.nombre}',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
    );
  }
}

class _SliverAppBar extends StatelessWidget {
  const _SliverAppBar({@required this.planetaImagen});

  final String planetaImagen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      stretch: true,
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: size.height * 0.3,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
        planetaImagen,
        fit: BoxFit.fill,
      )),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
      ),
    );
  }
}
