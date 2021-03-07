import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:planets/src/service/data/planet.dart';
import 'package:planets/src/service/pages/planetPage.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema Solar'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        elevation: 0.0,
      ),
      body: Container(child: _swiperPlanetas(size)),
    );
  }
}

Widget _swiperPlanetas(Size size) {
  return Container(
    child: new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * 0.1,
                child: Center(
                  child: Text(
                    planetas[index].nombre,
                    style: TextStyle(
                        color: planetas[index].color,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: ClipRRect(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, a, b) => PlanetPage(
                            planeta: planetas[index],
                          ),
                        ),
                      );
                    },
                    child: new Image.asset(
                      planetas[index].imagen,
                      fit: BoxFit.fill,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ]);
      },
      itemCount: planetas.length,
      itemWidth: size.width * 0.7,
      itemHeight: size.height * 0.7,
      layout: SwiperLayout.STACK,
      curve: Curves.decelerate,
      pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              color: Colors.black87,
              activeColor: Colors.blueAccent,
              activeSize: 20.0)),
    ),
  );
}
