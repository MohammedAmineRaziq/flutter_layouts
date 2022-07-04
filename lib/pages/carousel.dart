import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


List images = [
  'https://images.unsplash.com/photo-1656836995401-f3efa586e301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
  'https://images.unsplash.com/photo-1656831858199-a5d14527cd3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
  'https://images.unsplash.com/photo-1654994763632-a143b56c2986?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
  'https://images.unsplash.com/photo-1655139294116-0cf4b0d1d883?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mzh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
  'https://images.unsplash.com/photo-1655143655419-15c8d142c731?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
];



//Add carousel_slider: ^4.1.1 and smooth_page_indicator: ^1.0.0+2 to pubspec.yaml dependencies.
class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Example '),
      ),
      body: Center(
        child :Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 0.6,
                  autoPlayAnimationDuration: const Duration(milliseconds: 100),
                  autoPlay: true,
                  enlargeCenterPage: true,
                  height: 150,
                  aspectRatio: 16/9,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }
              ),
              items: images.map((item) {
                return  Container(
                  margin: EdgeInsets.only(top : 10.0 , bottom : 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              ).toList(),
            ),
            SizedBox(height: 2.0,),
            AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count:  images.length,
                effect:  const WormEffect(
                    spacing:  7.0,
                    radius:  4.0,
                    dotWidth:  18.0,
                    dotHeight:  10.0,
                    paintStyle:  PaintingStyle.stroke,
                    strokeWidth:  1,
                    dotColor:  Colors.grey,
                    activeDotColor:  Colors.blue
                ),
            )
          ]
       )
      ),
    );
  }
}
