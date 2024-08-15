//player list

import 'package:flutter/material.dart';
import 'package:second_app/player_info.dart';
import 'package:second_app/home.dart';
import 'main.dart';

class PlayersList extends StatefulWidget {
  final List<Player> players;



  PlayersList({
    required this.players,});

  @override
  State<PlayersList> createState() => _PlayersListState();
}

class _PlayersListState extends State<PlayersList> {
  List<String> backgroundimage = ['assets/football.jpg',
        'assets/cricket.jpg',
        'assets/baseball.jpg',
        'assets/volleyball2.jpg',
        'assets/tennis.jpg',
        'assets/table tennis.jpg',
         'assets/hockey.jpg',
         'assets/golf.jpg',
        'assets/badminton.jpg',
        'assets/basketball.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top 5 Players '),
        backgroundColor: Colors.purple[300],),
      body: Stack(
        children:[
          Positioned.fill(child:
          Image.asset("assets/five.jpg")
          ),
          ListView.builder(
        itemCount: widget.players.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(5),
            color: Colors.pink[100],
            child: ListTile(
              leading: Image.asset(widget.players[index].image1),
              splashColor: Colors.pink[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
              ),
              hoverColor: Colors.brown[300],
              title: Text(widget.players[index].name),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        PlayerInformation(
                            player: widget.players[index],

                        )
                )
                );
              },
            ),
          );
        },
       ),
      ]
      ),
    );
  }
}


