import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/helpers/constants.dart';
import 'package:music_app/helpers/playlist_info.dart';
import 'package:music_app/helpers/widgets.dart';

import 'components/components.dart';

class GetMusic extends StatefulWidget {
  const GetMusic({Key? key}) : super(key: key);

  @override
  State<GetMusic> createState() => _GetMusicState();
}

class _GetMusicState extends State<GetMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.navigate_before,
          color: Colors.black,
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Discover',
          style: kAppBarText,
        ),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              const SizedBox(height: 10),
              Text(
                'Perfect for you ',
                style: kSmallClassText,
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: playList
                        .map((singleHits) => Scrolls(hits: singleHits))
                        .toList()),
              ),
              SizedBox(height: 20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Designated(
                      color: Colors.grey.shade300,
                      title: 'FLY \nTHE FALCON',
                      image: 'assets/intro.jpg',
                      number: '87'),
                  const SizedBox(
                    width: 15,
                  ),
                  const Designated(
                      color: Colors.lightGreen,
                      title: 'ROAR',
                      image: 'assets/fresh.jpg',
                      number: '98'),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              const SeeAll(text: 'April Popular Hits')
            ],
          ),
        ),
      ),
    );
  }
}
