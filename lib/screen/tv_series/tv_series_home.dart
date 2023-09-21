import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeriesHome extends StatelessWidget {
  const SeriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Rated Series',
              style: GoogleFonts.nunito(fontSize: 25),
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: 10,
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  height: 300,
                  autoPlay: true,
                  viewportFraction: 0.55,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  animateToClosest: true,
                  enableInfiniteScroll: false,
                ),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Colors.amber,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Trending Series',
              style: GoogleFonts.nunito(fontSize: 25),
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 250,
                        width: 150,
                        color: Colors.amber,
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Upcoming Series',
              style: GoogleFonts.nunito(fontSize: 25),
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 250,
                        width: 150,
                        color: Colors.amber,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
