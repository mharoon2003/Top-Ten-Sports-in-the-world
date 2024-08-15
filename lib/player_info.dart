

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayerInformation extends StatefulWidget {
  final Player player;



  PlayerInformation({
    required this.player,
  });

  @override
  State<PlayerInformation> createState() => _PlayerInformationState();
}

class _PlayerInformationState extends State<PlayerInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.player.name),
        backgroundColor: Colors.purpleAccent,

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.purple[200],
        child: Column(
          children: [
            Container(child:
            Text(widget.player.info),
            ),

            Image.asset(widget.player.image1,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),



            SizedBox(height: 10),

            TextButton(
              onPressed: () {
                launchURL(widget.player.website);
                // Open player website link
              },
              child: Text('More about ${widget.player.name}'),
            ),
          ],
        ),
      ),

    );
  }
}

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}








final List<Player> footballPlayers = [
  Player('Lionel Messi', 'Argentinian footballer.', 'assets/football.jpg', 'https://www.messisoccer.com'),
  Player('Cristiano Ronaldo', 'Portuguese footballer.', 'assets/ronaldo1.jpg', 'https://www.cristianoronaldo.com'),
  Player('Neymar Jr', 'Brazilian footballer.', 'assets/neymar1.jpg', 'https://www.neymarjr.com'),
  Player('Kylian Mbappe', 'French footballer.', 'assets/mbappe1.jpg',  'https://www.mbappe.com'),
  Player('Kevin De Bruyne', 'Belgian footballer.', 'assets/debruyn1.jpg', 'https://www.debruyne.com'),
];

final List<Player> cricketPlayers = [
  Player('Sachin Tendulkar', 'Indian cricketer.', 'assets/sachin1.jpg', 'https://www.sachinsports.com'),
  Player('Virat Kohli', 'Indian cricketer.', 'assets/kohli1.jpg', 'https://www.viratkohli.com'),
  Player('Brian Lara', 'West Indian cricketer.', 'assets/lara1.jpg',  'https://www.brianlara.com'),
  Player('Jacques Kallis', 'South African cricketer.', 'assets/kallis1.jpg', 'https://www.jacqueskallis.com'),
  Player('Ricky Ponting', 'Australian cricketer.', 'assets/ponting1.jpg',  'https://www.rickyponting.com'),
];

final List<Player> basketballPlayers = [
  Player('Michael Jordan', 'American basketball player.', 'assets/jordan1.jpg',  'https://www.michaeljordan.com'),
  Player('LeBron James', 'American basketball player.', 'assets/lebron1.jpg',  'https://www.lebronjames.com'),
  Player('Kobe Bryant', 'American basketball player.', 'assets/kobe1.jpg',  'https://www.kobebryant.com'),
  Player('Shaquille O\'Neal', 'American basketball player.', 'assets/shaq1.jpg',  'https://www.shaq.com'),
  Player('Tim Duncan', 'American basketball player.', 'assets/duncan1.jpg', 'https://www.timduncan.com'),
];

final List<Player> tennisPlayers = [
  Player('Roger Federer', 'Swiss tennis player.', 'assets/federer1.jpg',  'https://www.rogerfederer.com'),
  Player('Rafael Nadal', 'Spanish tennis player.', 'assets/nadal1.jpg',  'https://www.rafaelnadal.com'),
  Player('Serena Williams', 'American tennis player.', 'assets/serena1.jpg',  'https://www.serenawilliams.com'),
  Player('Novak Djokovic', 'Serbian tennis player.', 'assets/djokovic1.jpg',  'https://www.novakdjokovic.com'),
  Player('Maria Sharapova', 'Russian tennis player.', 'assets/sharapova1.jpg',  'https://www.mariasharapova.com'),
];

final List<Player> baseballPlayers = [
  Player('Babe Ruth', 'American baseball player.', 'assets/ruth1.jpg',  'https://www.baberuth.com'),
  Player('Barry Bonds', 'American baseball player.', 'assets/bonds1.jpg', 'https://www.barrybonds.com'),
  Player('Hank Aaron', 'American baseball player.', 'assets/aaron1.jpg', 'https://www.hankaaron.com'),
  Player('Willie Mays', 'American baseball player.', 'assets/mays1.jpg',  'https://www.williemays.com'),
  Player('Ken Griffey Jr.', 'American baseball player.', 'assets/griffey1.jpg',  'https://www.kengriffeyjr.com'),
];

final List<Player> hockeyPlayers = [
  Player('Wayne Gretzky', 'Canadian hockey player.', 'assets/gretzky1.jpg',  'https://www.waynegretzky.com'),
  Player('Mario Lemieux', 'Canadian hockey player.' 'assets/lemieux2.jpg', '','https://www.mariolemieux.com'),
  Player('Bobby Orr', 'Canadian hockey player.', 'assets/orr1.jpg', 'https://www.bobbyorr.com'),
  Player('Sidney Crosby', 'Canadian hockey player.', 'assets/crosby1.jpg',  'https://www.sidneycrosby.com'),
  Player('Gordie Howe', 'Canadian hockey player.', 'assets/howe1.jpg',  'https://www.gordiehowe.com'),
];

final List<Player> badmintoPlayers = [
  Player('Richie McCaw', 'New Zealand rugby player.', 'assets/mccaw1.jpg',  'https://www.richiemccaw.com'),
  Player('Jonah Lomu', 'New Zealand rugby player.', 'assets/lomu1.jpg', 'https://www.jonahlomu.com'),
  Player('Martin Johnson', 'English rugby player.', 'assets/johnson1.jpg',  'https://www.martinjohnson.com'),
  Player('Brian O\'Driscoll', 'Irish rugby player.', 'assets/odriscoll1.jpg',  'https://www.briandodriscoll.com'),
  Player('Tana Umaga', 'New Zealand rugby player.', 'assets/umaga1.jpg',  'https://www.tanaumaga.com'),
];

final List<Player> golfPlayers = [
  Player('Tiger Woods', 'American golfer.', 'assets/woods1.jpg',  'https://www.tigerwoods.com'),
  Player('Jack Nicklaus', 'American golfer.', 'assets/nicklaus1.jpg',  'https://www.jacknicklaus.com'),
  Player('Arnold Palmer', 'American golfer.', 'assets/palmer1.jpg',  'https://www.arnoldpalmer.com'),
  Player('Phil Mickelson', 'American golfer.', 'assets/mickelson1.jpg',  'https://www.philmickelson.com'),
  Player('Rory McIlroy', 'Northern Irish golfer.', 'assets/mcilroy1.jpg', 'https://www.rorymcilroy.com'),
];

final List<Player> volleyBallplayers = [
  Player('Muhammad Ali', 'American boxer.', 'assets/ali1.jpg',  'https://www.muhammadali.com'),
  Player('Mike Tyson', 'American boxer.', 'assets/tyson1.jpg', 'https://www.miketyson.com'),
  Player('Floyd Mayweather Jr.', 'American boxer.', 'assets/mayweather1.jpg',  'https://www.floydmayweather.com'),
  Player('Manny Pacquiao', 'Filipino boxer.', 'assets/pacquiao1.jpg',  'https://www.mannypacquiao.com'),
  Player('Sugar Ray Leonard', 'American boxer.', 'assets/leonard1.jpg',  'https://www.sugarrayleonard.com'),
];

final List<Player> tableTennisPlayers = [
  Player('Ma Long', 'Chinese table tennis player.', 'assets/malong1.jpg',  'https://www.malong.com'),
  Player('Ding Ning', 'Chinese table tennis player.', 'assets/dingning1.jpg',  'https://www.dingning.com'),
  Player('Jan-Ove Waldner', 'Swedish table tennis player.', 'assets/waldner1.jpg', 'https://www.janovewaldner.com'),
  Player('Timo Boll', 'German table tennis player.', 'assets/boll1.jpg',  'https://www.timoboll.com'),
  Player('Fang Bo', 'Chinese table tennis player.', 'assets/fangbo1.jpg',  'https://www.fangbo.com'),
];
