//Home page
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'About.dart';
import 'Detail_of_sport.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Sport> sports = [
    Sport('Football', '''Most popular sport in the world.''','''
    1. Soccer/Football
    The first game on the list is, of course, football. It is a very forefront and agile game that has people gripping their seats while spectating the match. The game needs a lot of strength and the ability  to be in constant motion; these sorts of things impress the audience. 
       Names like Messi, Ronaldo and Neymar have popularized the game worldwide. Kids and adults love to play it themselves for the adrenaline rush.  In the last global census undertaken by the sports governing body FIFA, it was observed that there are 265 million people who play the sport  which equates to 4% of the world’s population.
''',
        "assets/football.jpg"),
    Sport('Basketball', 'A sport played by two teams on a court.','''
    5. Basketball
    You must have seen a tournament called NBA all over the traditional and modern media resources. This is enough proof to have basketball in  the list of 10 most popular sports. Even in the minimum count, basketball recognizes more than 450 million active players. The game is all about aiming the ball to the hoop, but the restrictions of time and the abundance of player  in the field makes it a once in a lifetime experience. The FIBA, or Federation of International Basketball Associations, claims that they keep recording peaks when it comes to the increase in followers, players, and viewers. 
    ''' ,
        "assets/basketball.jpg"),
    Sport('Cricket', 'A bat-and-ball game played between two teams.','''
    3. Cricket
    Then we have the game called cricket on the list. This should come as  no surprise that Cricket made it to the list. It is the biggest sports   celebration that is enjoyed and practiced in over 125 countries. 
    Their impressive fanbase doesn't just stick to a particular country, but it is very diverse. For example, a cricket lover from South Africa  will still watch India v/s Australia match to know where their home country team stands. The strategies, the expertise, and the involvement make this  one of the most consumed sports on this planet. The number of viewers is  not in a million but over a billion for this sport.
''',
        "assets/cricket.jpg"),
    Sport('Tennis', 'A racket sport that can be played individually.','''
    4.Tennis
    Coming up next is Tennis. This game is played by over 60 million people.  That's unbelievable because it is a very energetic game. Both men and women  enjoy playing Tennis. Names like Roger Federer, Serena Williams, Sania Mirza,  and Rafael Nadal are the reason why people love this game. It's just about two  or sometimes four players, and it's played on a court rather than a field.  The indoor game has ranked high per viewership, which amplifies due to the winning streaks and the last-minute shots. It is about outshining among a  smaller number of people. The doubles version of the sport is also very popular around the world, which is the major reason why it ranks on the top sports list.
''',
        "assets/tennis.jpg"),
    Sport('Baseball', 'A bat-and-ball game played between two teams.','''
    5.Baseball
    On number 5, we have baseball. This is an American-origin game that has a fair amount of views and players in more than 140 countries. Back in the day,it was just a popular game in America and not anywhere else in the world. However, according to recent sports reports, baseball is now becoming famous in other  countries. The sport is equally enjoyed by men and women. For women, they have a  version called softball that has similar rules and patterns. As estimated by the World Baseball Softball Confederation, there are around 65 million baseball players, which comprise people of all ages, races and   genders. 
''', "assets/baseball.jpg"),
    Sport('Hockey', 'A sport played on ice or field with sticks.','''
    6.Hockey
    Then we have field hockey on the list. The game is analyzed as one of the most rigorous as well as strategic games. Field hockey is famous among men and women in over 100 countries scattered over 5 continents. The popular sport is  especially famous in Asia, Australia, Africa, and Europe. The 11-player game  is the most nerve-wracking experience for the viewers. The limited time,  competition on the field, and the certified rules make the game even more  interesting. Field hockey has the potential to keep the viewers invested from  start to beginning. That's why it has over 200 million players across the world.    
''',
        "assets/hockey.jpg"),
    Sport('Golf', 'A club and ball sport in which players aim to hit the ball.','''
   7. Golf
   The seventh sport on the list that has a grand number of 60 million players. It is none other than golf. This is a game that is mostly recognized as an  expensive game because of the high-end equipment price and the venues. 
   Yet it has a lot of players and viewers. The slow-paced game is all about maintaining a perfect aim towards the goal. The definition of regularly playing  golf in these numbers equates to taking part in one round of golf per year or  using a facility such as a driving range. The game itself looks very luxurious  and strategic, which makes it land on this list.
   In the end, we can observe that all the sports mentioned above are at least played by millions of people worldwide. This data is according to studies and  statements given by respective sports organizations. If you are interested in  playing or already playing any of these sports, it is important to consider  having the proper clothing and equipment. Get those essentials with a Nike  discount, Sun & Sand discount code, Adidas coupon and other in-store offers to  get everything at accessible prices.
''',
        "assets/golf.jpg"),
    Sport('Badminton', ' It is one of the most entertaining sports ','''
    . Badminton
      The next sport on the list is badminton. It is one of the most entertaining sports that has an equal amount of viewership for men and women. For some people, it might come as a surprise, but yes, it is a very    popular sport worldwide. The equipment for this sport requires rackets,  shuttle corks, and a net. The easy assemblage of the game makes it more  loved among the sporty community. Badminton is an extremely famous indoor  as well as outdoor sport played regularly by an estimated 220 million people  worldwide. As per surveys, badminton is way more popular in Asia than in any  other continent. It even has the best players from the same continent.
''',"assets/badminton.jpg"),
    Sport('Volleyball', 'Teams hit a ball over a high net.','''
    9. Volleyball
    The ninth game is volleyball. This a very fun sport that people enjoy on cemented areas, fields, and even above water levels. The game offers an exhilarating feeling between the opponents. Whether it is a serious or a friendly match, volleyball is the ideal game to play worldwide. As per current numbers, it has about 998 million participants. The indoor and outdoor versions have equal buzz as there are over 200 affiliated national federations for the game. The impressive estimated amount of players includes professional, budding, and hobby players.
''',"assets/volleyball2.jpg"),
    Sport('Table Tennis', 'A sport in which players hit a lightweight ball.','''
    10. Table Tennis
    The next sport is table tennis. Out of all the other indoor sports, this stays at the top. In recent years, this indoor sport has become increasingly popular, with its integration into schools, social clubs, and sports centers at a global level. It is observed by sports federations that there are over 300 million people who participate in table tennis. Table tennis is a two-player game that depends on practice and patience. Because one sleek move and you might lose the game. All these aspects make this game favored by several people in the world.
''',"assets/table tennis.jpg"),
  ];

  void onTapped(int index){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          HomePage()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
          Text("Top Ten Sports"),

      backgroundColor: Colors.purpleAccent[200],
        actions: [
          PopupMenuButton(
              color: Colors.purple[200],
              shadowColor: Colors.blue,
              onSelected: (String value){
                if (value == 'About'){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                      const About(),
                      )
                  );
                }
                if(value == 'exit'){
                  exit(0);
                }
              },

              itemBuilder:(BuildContext context) =>
              [
                PopupMenuItem(
                  padding: EdgeInsets.fromLTRB(0,5, 0, 0),
                  value: 'Share',
                  child:
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Share'),
                  ),
                ),

                PopupMenuItem(
                  value: 'exit',
                  child:
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Exit'),
                  ),
                ),

                PopupMenuItem(
                  value: 'About',
                  child:
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                  ),
                ),
              ]
          )
        ],
      ),
      body: Stack(
        children:[
          Positioned.fill(child:
          Image.asset("assets/baseball.jpg",
          fit: BoxFit.cover,)),
          ListView.builder(
          itemCount: sports.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              elevation:10,
              color: Colors.white12,

              child: ListTile(
                tileColor: Colors.transparent,
                splashColor: Colors.purple[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                hoverColor: Colors.purple[200],
                title: Text(sports[index].name,
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                subtitle: Text(sports[index].details,
                  style:TextStyle(
                      color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
                leading: Image.asset(sports[index].image,),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(sport:  sports[index])));
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

