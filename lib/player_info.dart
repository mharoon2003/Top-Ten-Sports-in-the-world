

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
      body: SingleChildScrollView(
        
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(14),
          
          color: Colors.purple[200],
          child: Column(
            children: [
              Container(child:
              Text(widget.player.info,
                textAlign: TextAlign.justify,),
              ),

        
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image:
                    AssetImage(widget.player.image1))
                ),
                child: AspectRatio(aspectRatio: 5/5,
                  ),
              ),
        
             // Image.asset(widget.player.image1,
               // fit: BoxFit.cover,
                //width: double.infinity,
                //height: 250,
              //),

        
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
  Player('Cristiano Ronaldo', '''He is the captain of the Portuguese national team, and he is currently playing at Saudi Arabian football club Al Nassr. He is considered to be one of if not, the greatest footballer of all time. Ronaldo began his professional career with Sporting CP at age 16 in 2002 and signed for Manchester United a year later''',
      'assets/players/Ronaldo.jpg', 'https://www.google.com/search?q=information+about+Rounaldo&oq=information+about+Rounaldo&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQABgNGIAEMgkIAhAAGA0YgAQyCQgDEAAYDRiABDIJCAQQABgNGIAEMgkIBRAAGA0YgAQyCQgGEAAYDRiABDIJCAcQABgNGIAEMgkICBAAGA0YgAQyCQgJEAAYDRiABNIBCjE0NjExajFqMTWoAgiwAgE&sourceid=chrome&ie=UTF-8#vhid=fI4rmVX_3YHeaM&vssid=l'),
  Player('Lionel Messi', 'Born in Rosario, Argentina, in 1987, Lionel Messi is widely regarded as one of the greatest football players of all time, and his illustrious career proves why. The Argentinean footballer, who holds a record eight Ballon dOr awards, has displayed his talent early on and has always been destined for greatness',
      'assets/players/messi.jpg', 'https://www.google.com/search?q=information+about+messi&sca_esv=4c45a275ab92484d&ei=M_q9Zue0H8OFxc8PlLnJ0Qc&ved=0ahUKEwinmpKYhfeHAxXDQvEDHZRcMnoQ4dUDCA4&uact=5&oq=information+about+messi&gs_lp=Egxnd3Mtd2l6LXNlcnAiF2luZm9ybWF0aW9uIGFib3V0IG1lc3NpMgcQABiABBgTMgcQABiABBgTMgcQABiABBgTMgcQABiABBgTMgcQABiABBgTMgcQABiABBgTMgcQABiABBgTMggQABgTGBYYHjIIEAAYExgWGB4yCBAAGBMYFhgeSKM2UNYRWP8tcAN4AJABAZgBiQKgAcURqgEFMS45LjO4AQPIAQD4AQGYAgugAoAKwgIKEAAYsAMY1gQYR8ICDRAAGIAEGLADGEMYigXCAgUQIRigAcICChAAGBMYFhgeGA_CAgUQABiABMICBhAAGBYYHpgDAOIDBRIBMSBAiAYBkAYIkgcDNC43oAfXRg&sclient=gws-wiz-serp#vhid=QnIpyV4HeCJMnM&vssid=l'),
  Player('Zinedine Yazid Zidane', 'Zinedine Yazid Zidane (French: Zinédine Yazid Zidane;[4] Kabyle: Zineddin Lyazid Zidan; born 23 June 1972), popularly known as Zizou, is a French professional football manager and former player who played as an attacking midfielder. He most recently coached Spanish club Real Madrid and is one of the most successful coaches in the world. Widely regarded as one of the greatest players of all time, Zidane was a playmaker renowned for his elegance, vision, passing, ball control, and technique. He received many individual accolades as a player, including being named FIFA World Player of the Year in 1998, 2000 and 2003, and winning the 1998 Ballon Or ',
      'assets/players/Zidane_(4).jpg', 'https://en.wikipedia.org/wiki/Zinedine_Zidane'),
  Player('Kylian Mbappe', 'Kylian Mbappé Lottin (born 20 December 1998) is a French professional footballer who plays as a forward for La Liga club Real Madrid and captains the France national team.[2] Widely regarded as one of the best players in the world, he is known for his dribbling, speed, and finishing',
      '',  'https://en.wikipedia.org/wiki/Kylian_Mbapp%C3%A9'),
  Player('Karim Mostafa Benzema ', 'Karim Mostafa Benzema (born 19 December 1987) is a French professional footballer who plays as a striker for Spanish club Real Madrid and the France national team. He has been described as an "immensely talented striker" who is "strong and powerful" and "a potent finisher from inside the box".',
      'assets/players/benzima.jpg', 'https://www.imdb.com/name/nm3294525/bio/'),
];

final List<Player> cricketPlayers = [
  Player('Sachin Tendulkar', 'Tendulkar was given his first bat when he was 11 years of age. As a 14-year-old, he used it to score 329 out of a world-record stand of 664 in a school match. A year later he scored a century on his first-class debut for Bombay (Mumbai), and at age 16 years 205 days he became India’s youngest Test (international) cricketer, making his debut against Pakistan in Karachi in November 1989. When he was 18 he scored two centuries in Australia (148 in Sydney and 114 in Perth), and in 1994 he scored 179 against the West Indies. In August 1996, at age 23, Tendulkar was made captain of his country’s team.',
      'assets/players/sachin.webp', 'https://www.britannica.com/biography/Sachin-Tendulkar'),
  Player('Virat Kohli', 'Virat Kohli is an Indian cricketer who plays for India national cricket team. He was born in Delhi, India on November 5, 1988. Virat is the first player in ICC cricket history to win all 3 ICC awards in a single year- ICC , ODI player of the year, ICC Test player of the year and ICC Player of the year award in 2018. He is rated as one of the best batsmen in the world.[3][4][5] He plays right handed-batting. He is considered as one of the greatest batsmen of all time.[6] In ODIs, he boasts an average of 65.5 runs when batting second and 51.7 runs when batting first',
      'assets/players/kholi.jpg', 'https://simple.wikipedia.org/wiki/Virat_Kohli'),
  Player('Brian Lara', 'Brian Lara (born May 2, 1969, Cantaro, Trinidad) is a West Indian cricketer, one of the sport’s most renowned contemporary players. The compact left-handed batsman is the record holder for most runs scored in an innings in both Test (international) and first-class cricket.',
      'assets/players/lara.jpg',  'https://www.britannica.com/biography/Brian-Lara'),
  Player('Jacques Kallis', 'Jacques Henry Kallis OIS (born 16 October 1975) is a South African cricket coach and former professional cricketer. Widely regarded as one of the greatest cricketers of all time and as one of the greatest all-rounders ever to play the game, he was a right-handed batsman and right-arm fast-medium swing bowler.[2] As of 2024, Kallis is the only cricketer in the history of the game to score more than 10,000 runs and take over 250 wickets in both ODI and Test match cricket. He has also taken 131 ODI catches. He scored 13,289 runs in his Test match career, took 292 wickets, and 200 catches. Kallis scored 45 Test match centuries and is the third highest test match run scorer in history. Kallis won 23 Man-of-the-Match awards, the most by any player in Test history',
      'assets/players/Jacques_Kallis_2.jpg', 'https://en.wikipedia.org/wiki/Jacques_Kallis'),
  Player('Ricky Ponting', 'Ricky Thomas Ponting AO (born 19 December 1974) is an Australian cricket coach, commentator and former player. Widely regarded as one of the greatest batsmen of all time, Ponting was captain of the Australia national team between 2004 and 2011 in Test cricket and 2002 and 2011 in One Day Internationals (ODIs) and is the most successful captain in international cricket history, with 220 victories in 324 matches with a winning rate of 67.91%. He stands third in the list of cricketers by number of international centuries scored. He holds the record for winning most ICC tournaments as a captain in Men\'s Cricket. Under his Captaincy Australia won the 2003 and 2007 Cricket World Cups and 2006 and 2009 Champions Trophies. He was also a member of the Australian team that won the 1999 Cricket World Cup.',
      'assets/players/Ricky.jpg',  'https://en.wikipedia.org/wiki/Ricky_Ponting'),
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
