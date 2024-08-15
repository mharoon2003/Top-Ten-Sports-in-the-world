//player list

import 'package:flutter/material.dart';
import 'package:second_app/player_info.dart';

import 'main.dart';

class PlayersList extends StatefulWidget {
  final List<Player> players;


  PlayersList({
    required this.players,});

  @override
  State<PlayersList> createState() => _PlayersListState();
}

class _PlayersListState extends State<PlayersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top 5 Players '),
        backgroundColor: Colors.purple[300],),
      body: Container(
        color: Colors.purple[200],
        child: ListView.builder(
          itemCount: widget.players.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(5),
              color: Colors.pink[100],
              child: ListTile(
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
      ),
    );
  }
}


