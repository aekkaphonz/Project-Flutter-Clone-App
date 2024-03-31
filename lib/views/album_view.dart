// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/album_card.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider image;
  const AlbumView({super.key, required this.image});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        print(scrollController.offset);
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.of(context).size.width / 2 - 32;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.blueGrey[600],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: Offset(0, 20),
                          blurRadius: 32,
                          spreadRadius: 16,
                        ),
                      ],
                    ),
                    child: Image(
                      image: widget.image,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 32),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "JUST",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/logo.png"),
                                      width: 36,
                                      height: 36,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "Spotify",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                                  ],
                                ),
                                SizedBox(width: 16),
                                SizedBox(height: 8),
                                Text(
                                  "1,881,254 likes 5h 3m",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.add_circle_outline),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(Icons.save_alt_outlined),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum"),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          "You migth aslo like",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: "mantis",
                                image: AssetImage("assets/mantis.jpg"),
                                onTap: () {},
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: "televisionoff",
                                image: AssetImage("assets/televisionoff.jpg"),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: "Dept",
                                image: AssetImage("assets/dept.jpg"),
                                onTap: () {},
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: "Yew",
                                image: AssetImage("assets/yew.jpg"),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: "Joji",
                                image: AssetImage("assets/joji.png"),
                                onTap: () {},
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: "Good bye",
                                image: AssetImage("assets/goodbye.jpg"),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                color: showTopBar
                    ? Color(0xff61855).withOpacity(1)
                    : Color(0xff61855).withOpacity(0),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: SafeArea(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              size: 38,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 120),
                          opacity: showTopBar ? 1 : 0,
                          child: Text(
                            "Just",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 80 -
                              containerHeight.clamp(120.0, double.infinity),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 32,
                                ),
                              ),
                              Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.shuffle,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
