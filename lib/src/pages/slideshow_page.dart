import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/slideShow.dart';

class SlideshowPage extends StatelessWidget {
  const SlideshowPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
      body: Column(
        children: [
          Expanded(child: MiSlideShow()),
           Expanded(child: MiSlideShow()),
        ],
      )
        );
  }
}

class MiSlideShow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Slideshow(
        bulletPrimario:15,
        bulletSecundario:12,
     // puntosArriba: false,
       colorPrimario:const Color(0xffFF5A7E),
       //colorSecundario: Colors.blue.shade50,
      slides: [
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
        SvgPicture.asset('assets/svgs/slide-5.svg')
      ],
    );
  }
}