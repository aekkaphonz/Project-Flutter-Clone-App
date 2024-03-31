// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/album_card.dart';
import '../widgets/song_card.dart';




class Homeview extends StatefulWidget {
  
  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Color(0xbbc3c3),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(width: 16),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "YEW",
                            image: AssetImage("assets/yew.jpg"), onTap: (){},
                          ),
                          
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Tattoo Colour",
                            image: AssetImage("assets/tattoocolour.jpg"), onTap: (){},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "SOK",
                            image: AssetImage("assets/sok.jpg"), onTap: (){},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Television off",
                            image: AssetImage("assets/televisionoff.jpg"), onTap: (){},
                          ),
                          
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Dept",
                            image: AssetImage("assets/dept.jpg"), onTap: (){},
                          ),
                          SizedBox(width: 16),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good evening",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              RowalbumCard(
                                label: "Navermind",
                                image: AssetImage("assets/maipenrai.png"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowalbumCard(
                                label: "Joji",
                                image: AssetImage("assets/joji.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              RowalbumCard(
                                label: "Just",
                                image: AssetImage("assets/just.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowalbumCard(
                                label: "Daydream",
                                image: AssetImage("assets/day.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              RowalbumCard(
                                label: "DO YOU KNOW",
                                image: AssetImage("assets/buthate.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowalbumCard(
                                label: "Lemon Soup",
                                image: AssetImage("assets/lemon.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "For you",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(image: AssetImage("assets/mantis.jpg")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/goodbye.jpg")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/post.png")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/keshi.jpg")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/life.png")),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended radio",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(image: AssetImage("assets/week.png")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/stupid.jpg")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/uncle.jpg")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/anato.jpg")),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage("assets/1975.png")),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowalbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowalbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(4),
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(children: [
            Image(
              image: image,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
            Text(label)
          ])),
    );
  }
}
