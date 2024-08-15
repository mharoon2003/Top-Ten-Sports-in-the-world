//Detail page


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_app/player_info.dart';

import 'Player_list.dart';
import 'main.dart';

class DetailPage extends StatefulWidget {
  final Sport sport;

   DetailPage({required this.sport});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //list of football players
  @override
  Widget build(BuildContext context) {
  final List<Player> players =
  widget.sport.name == "Football" ? footballPlayers:
  widget.sport.name == 'Cricket' ? cricketPlayers :
  widget.sport.name == 'Basketball' ? basketballPlayers :
  widget.sport.name == 'Tennis' ? tennisPlayers :
  widget.sport.name == 'Baseball' ? baseballPlayers :
  widget.sport.name == 'Hockey' ? hockeyPlayers :
  widget.sport.name == 'Rugby' ? badmintoPlayers :
  widget.sport.name == 'Golf' ? golfPlayers :
  widget.sport.name == 'Boxing' ? volleyBallplayers :
  tableTennisPlayers;



    return Scaffold(
      appBar: AppBar(title: Text(widget.sport.name),
      backgroundColor: Colors.purpleAccent[400],
      ),
      body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.all(14),
           margin: EdgeInsets.all(8),
           color: Colors.purple[100],
           child: Column(
             children: [
                   Container(
                     height: 400,
                     width: double.infinity,
                     //color: Colors.purple[100],
                       child: Text(widget.sport.moredetails)),
                   Container(
                     height: 350,
                     width: double.infinity,
                     child: Image.asset(widget.sport.image,
                       fit: BoxFit.cover,
                       width: 250,
                       height: 200,),
                   ),

                   SizedBox(
                     height: 16,
                   ),

               Row(
                 children: [
                   ElevatedButton(
                     child: Text('Top 5 Players of ${widget.sport.name}',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.black
                     ),),
                     onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) =>
                             PlayersList(
                               players: players,

                             ),
                       ));
                     },
                   ),

                   Expanded(
                     child: ElevatedButton(
                       child: Text('Game of the  ${widget.sport.name}',
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.black
                         ),),
                       onPressed: () {
                         launchURL(widget.sport.gamelink);
                       },
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
       ),
    );
  }
}

