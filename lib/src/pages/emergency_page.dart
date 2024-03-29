import 'package:animate_do/animate_do.dart';
import 'package:disenos_app/src/widgets/button_gordo.dart';
import 'package:disenos_app/src/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 550) {
      isLarge = true;
    } else {
      isLarge = false;
    }

    final items = <ItemBoton>[
      // ignore: deprecated_member_use, unnecessary_new
      ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.personBiking, 'Awards',
          const Color(0xff317183), const Color(0xff46997D)),
      ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.personBiking, 'Awards',
          const Color(0xff317183), const Color(0xff46997D)),
      ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.personBiking, 'Awards',
          const Color(0xff317183), const Color(0xff46997D)),
    ];

    List<Widget> itemMap = items
        .map(
          (item) => FadeInLeft(
            duration: const Duration(milliseconds: 300),
            child: ButtonGordoPage(
              icon: item.icon,
              color1: item.color1,
              color2: item.color2,
              texto: item.texto,
              onPress: () {
                print('Hola Mundo');
              },
            ),
          ),
        )
        .toList();

    return Scaffold(
        // backgroundColor: Colors.red,
        body: Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: (isLarge) ? 220 : 10),
          child: SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                if (isLarge)
                  const SizedBox(
                    height: 80,
                  ),
                ...itemMap
              ],
            ),
          ),
        ),
        if (isLarge) _EncabezadoIconHeader()
      ],
    ));
  }
}

class _EncabezadoIconHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const IconHeader(
          icon: FontAwesomeIcons.plus,
          titulo: 'Asistencia Medica',
          subtitulo: 'Haz solicitado',
          color2: Color(0xff6989F5),
          color1: const Color(0xff536CF6),
        ),
        Positioned(
            right: 0,
            top: 45,
            child: RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(),
                padding: EdgeInsets.all(15.0),
                child: FaIcon(
                  FontAwesomeIcons.ellipsisV,
                  color: Colors.white,
                )))
      ],
    );
  }
}

class _ButtonGordoTemp extends StatelessWidget {
  const _ButtonGordoTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonGordoPage(
        texto: 'Motor Accident',
        onPress: () {
          print('Click!!!');
        },
        icon: FontAwesomeIcons.carCrash,
        color1: const Color(0xff6989f5),
        color2: const Color(0xff906ef5));
  }
}

class _HeaderPage extends StatelessWidget {
  const _HeaderPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      icon: FontAwesomeIcons.plus,
      subtitulo: 'Haz solicitado',
      titulo: 'Asistencia médica',
      color1: Color(0xff526bf6),
      color2: Color(0xff67acf2),
    );
  }
}
