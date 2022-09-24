import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1280_wtc_app/src/ui/wtc_user_list_component.dart';

class WTCHomePage extends StatefulWidget {
  const WTCHomePage({Key? key}) : super(key: key);

  @override
  State<WTCHomePage> createState() => _WTCHomePageState();
}

class _WTCHomePageState extends State<WTCHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_960_720.jpg",
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2),
                      BlendMode.darken,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 32,
                    bottom: 42,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [

                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                            ),
                            color: Colors.white,
                            iconSize: 28,
                          ),
                          const Expanded(
                              child: Center(
                            child: Text(
                              "@dreamwalker",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          )),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 12,
                              color: Colors.deepOrange,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Icon(
                            Icons.settings_outlined,
                            size: 28,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "Dream Walker",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Flutter - Developer",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.location_pin,
                            size: 15,
                            color: Colors.orange,
                          ),
                          Text(
                            "Seoul, Republic of Korea",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          const WtcUserListComponent(),
        ],
      ),
    );
  }
}
