

//about page of the app

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('About the app'),
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            color: Colors.purple[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Column(
                  children: [
                    Text(''' About the App  ''',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Text('''    _ This is an app about the top ten sports in the world and  these sports are in top ten list because they are because they   are popular and the most people of the world play these or at least watch these sports.
     This app name that sports and give information about those sports  about the role of playings and some information about the top five players   of these sports . Remember this that there may be another better players in these  sports except the players and our mean is not that to compare them each other  because every player in every game has his own talent and the talents are not comparable.
     Our measurement is here the popularity and the game of players .  
                  ''',
                      style: TextStyle(
                          fontSize: 22,

                      ),
                    ),

                   Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(image:
                       AssetImage("assets/logo.png"))
                     ),
                     child: AspectRatio(aspectRatio: 25/24,
                     child: Container(),),
                   ),


                SizedBox(height: 24,),

                Text('''About the programmer of the this app  ''',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 5,),

                    Text('''Hey I am M.Haroon Nadim from Afghanistan and i am a student in Herat University i am studing Computer Sceince Faculty and this is my secound year.
     And this is my first app from flutter framework as an information  apliction about the Top Ten Sports of The World and i hope this will be helpful for users and i thankful to all mu friends those who helped me  in this project.
                    
                 ''',
                      style: TextStyle(
                          fontSize: 22,

                      ),
                    ),


                SizedBox(height: 10,),

                    Text(''' Meet Me On ''',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    
                    Row(
                      children: [
                        Expanded(
                          child: IconButton(onPressed: (){},
                              icon: Icon(Icons.telegram_outlined),
                            color: Colors.blue,
                          splashColor: Colors.pink[200],),
                        ),
                        Expanded(
                          child: IconButton(onPressed: (){},
                              icon: Icon(Icons.facebook_outlined),
                            color: Colors.deepPurple,
                          splashColor: Colors.pink[200],),
                        ),
                        Expanded(
                          child: IconButton(onPressed: (){},
                              icon: Icon(Icons.alternate_email),
                            color: Colors.redAccent,
                          splashColor: Colors.pink[200],),
                        ),
                      ],
                    )

                  ]
                ),
              ],
            ),

        ),
      ),
    );
  }
}
