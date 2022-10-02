import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RentingDetailPage extends StatefulWidget {
  const RentingDetailPage({Key? key}) : super(key: key);

  @override
  State<RentingDetailPage> createState() => _RentingDetailPageState();
}

class _RentingDetailPageState extends State<RentingDetailPage> {
  int pageIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 380,
            color: Colors.pink,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: PageView(
                    onPageChanged: (i) {
                      setState(() {
                        pageIndex = i;
                      });
                    },
                    controller: pageController,
                    children: [
                      Image.network(
                        "https://cdn.pixabay.com/photo/2016/11/18/22/21/restaurant-1837150_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://cdn.pixabay.com/photo/2019/05/28/00/15/indoors-4234071_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://cdn.pixabay.com/photo/2021/08/27/01/33/bedroom-6577523_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://cdn.pixabay.com/photo/2016/11/18/22/21/restaurant-1837150_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 38,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go("/");
                        },
                        child: CircleAvatar(
                          child: Icon(
                            Icons.arrow_back,
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.share,
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 32,
            // color: Colors.orange,
            child: DotsIndicator(
              position: pageIndex.toDouble(),
              dotsCount: 4,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Placeholder(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              SizedBox(
                height: 64,
                width: 64,
                child: Card(
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 64 - 4,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
