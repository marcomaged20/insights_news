import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/feature/home/news/widgets/news_list_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class newsview extends StatefulWidget {
  const newsview({super.key});

  @override
  State<newsview> createState() => _newsviewState();
}

// ignore: camel_case_types
class _newsviewState extends State<newsview> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Marco',
                        style: TextStyle(
                            color: Appcolors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Have A Nice Day',
                        style: TextStyle(color: Appcolors.grey),
                      ),
                    ],
                  ),
                  // const Spacer(),
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/user.jpg'),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/user.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    height: 150,
                    // aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    // autoPlayInterval: const Duration(seconds: 3),
                    // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 5,
              ),
              SmoothPageIndicator(
                  controller:
                      PageController(initialPage: _pageIndex), // PageController
                  count: 5,
                  effect: ScrollingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor:
                          Appcolors.lomanda), // your preferred effect
                  onDotClicked: (index) {}),
              const SizedBox(
                height: 10,
              ),
              ButtonsTabBar(
                // Customize the appearance and behavior of the tab bar
                backgroundColor: Appcolors.lomanda,
                unselectedBackgroundColor: Appcolors.grey,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                borderWidth: 2,
                borderColor: Colors.black,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(text: 'Science'),
                  Tab(text: 'Sports'),
                  Tab(text: 'Entertainment'),
                  Tab(text: 'Business'),
                ],

                // Add your tabs here
              ),
              const Expanded(
                  child: TabBarView(
                children: [
                  NewsListViewWidget(),
                  NewsListViewWidget(),
                  NewsListViewWidget(),
                  NewsListViewWidget(),
                ],
              )),
            ],
          ),
        )),
      ),
    );
  }
}
