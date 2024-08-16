

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
                child: Text('More about ${widget.player.name}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
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
      'assets/mbappy.jpg',  'https://en.wikipedia.org/wiki/Kylian_Mbapp%C3%A9'),
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
  Player('Michael Jordan', '''Michael Jeffrey Jordan (born February 17, 1963), also known by his initials MJ,[9] is an American businessman and former professional basketball player. He played 15 seasons in the National Basketball Association (NBA) between 1984 and 2003, winning six NBA championships with the Chicago Bulls. He was integral in popularizing basketball and the NBA around the world in the 1980s and 1990s,[10] becoming a global cultural icon.[11] His profile on the NBA website states, "By acclamation, Michael Jordan is the greatest basketball player of all time."
Jordan played college basketball with the North Carolina Tar Heels. As a freshman, he was a member of the Tar Heels' national championship team in 1982.[5] Jordan joined the Bulls in 1984 as the third overall draft pick[5][13] and quickly emerged as a league star, entertaining crowds with his prolific scoring while gaining a reputation as one of the best defensive players.[14] His leaping ability, demonstrated by performing slam dunks from the free-throw line in Slam Dunk Contests, earned him the nicknames "Air Jordan" and "His Airness". Jordan won his first NBA title with the Bulls in 1991 and followed that achievement with titles in 1992 and 1993, securing a three-peat. Following the murder of his father, Jordan abruptly retired from basketball before the 1993–94 NBA season to play Minor League Baseball in the Chicago White Sox organization, but returned to the Bulls in March 1995 and led them to three more championships in 1996, 1997, and 1998, as well as a then-record 72 regular season wins in the 1995–96 NBA season.[5] Jordan retired for the second time in January 1999, returning for two more NBA seasons from 2001 to 2003 as a member of the Washington Wizards.[5][13] He was selected to play for the United States national team during his college and NBA careers, winning four gold medals—at the 1983 Pan American Games, 1984 Summer Olympics, 1992 Tournament of the Americas and 1992 Summer Olympics—while also being undefeated''',
      'assets/players/jordan.jpg',  'https://en.wikipedia.org/wiki/Michael_Jordan'),
  Player('LeBron James', 'LeBron James (born December 30, 1984, Akron, Ohio, U.S.) is an American professional basketball player who is widely considered one of the greatest all-around players of all time and who won National Basketball Association (NBA) championships with the Miami Heat (2012 and 2013), the Cleveland Cavaliers (2016), and the Los Angeles Lakers (2020). In 2023 he became the NBA’s all-time leading scorer, breaking the record (38,387) previously held by Kareem Abdul-Jabbar. His dominance continued when in 2024, he recorded his 40,000 point scored.',
      'assets/players/lebron.jpg',  'https://www.britannica.com/biography/LeBron-James'),
  Player('Kobe Bryant', 'American basketball player.Kobe Bryant (born August 23, 1978, Philadelphia, Pennsylvania, U.S.—died January 26, 2020, Calabasas, California) was an American professional basketball player, who helped lead the Los Angeles Lakers of the National Basketball Association (NBA) to five championships (2000–02 and 2009–10).',
      'assets/players/kobe.jpg',  'https://www.britannica.com/biography/Kobe-Bryant'),
  Player('Shaquille O\'Neal', 'Shaquille Rashaun O\'Neal born March 6, 1972), known commonly as Shaq (/ʃæk/ SHAK), is an American former professional basketball player who is a sports analyst on the television program Inside the NBA. He is a 7-foot-1-inch (2.16 m) and 325-pound (147 kg) center who played for six teams over his 19-year career in the National Basketball Association (NBA) and is a four-time NBA champion. O\'Neal is regarded as one of the greatest basketball players and centers of all time',
      'assets/players/shaq.jpg',  'https://en.wikipedia.org/wiki/Shaquille_O%27Neal'),
  Player('Tim Duncan', 'Tim Duncan (born April 25, 1976, St. Croix, U.S. Virgin Islands) is an American collegiate and professional basketball player who led the San Antonio Spurs of the National Basketball Association (NBA) to five championships (1999, 2003, 2005, 2007, and 2014)',
      'assets/players/duncan.jpg', 'https://www.britannica.com/biography/Tim-Duncan'),
];

final List<Player> tennisPlayers = [
  Player('Roger Federer', 'Roger Federer, (born Aug. 8, 1981, Basel, Switz.), Swiss tennis player. He won his first Grand Slam tournament, at Wimbledon, in 2003. Federer won a record eight Wimbledon titles (2003–07, 2009, 2012, 2017), five U.S. Opens (2004–08), six Australian Opens (2004, 2006–07, 2010, 2017, 2018), and one French Open (2009). He was the first player to capture 20 career men’s singles Grand Slam championships; Rafael Nadal surpassed that number in 2022. From July 2003 to November 2005 Federer won a modern-record 24 straight tournament finals. He also established records for consecutive grass-court victories (65) and consecutive weeks with a number one world ranking (237). Federer won a silver medal at the 2012 London Olympic Games. In 2022 he announced his retirement.',
      'assets/players/federer.jpg',  'https://www.britannica.com/summary/Roger-Federer'),
  Player('Rafael Nadal', 'Rafael Nadal Parera[pron 1] (born 3 June 1986) is a Spanish professional tennis player. He has been ranked world No. 1 in singles by the Association of Tennis Professionals (ATP) for 209 weeks, and has finished as the year-end No. 1 five times. Nadal has won 22 Grand Slam men\'s singles titles, including a record 14 French Open titles. He has won 92 ATP-level singles titles, including 36 Masters titles and an Olympic gold medal, with 63 of these on clay courts. Nadal is one of three men to complete the Career Golden Slam in singles.[a] His 81 consecutive wins on clay constitute the longest single-surface win streak in the Open Era..',
      'assets/players/nadal.jpg',  'https://en.wikipedia.org/wiki/Rafael_Nadal'),
  Player('Serena Williams', 'Serena Williams (born September 26, 1981, Saginaw, Michigan, U.S.) is an American tennis player who revolutionized women’s tennis with her powerful style of play and who won more Grand Slam singles titles (23) than any other woman or man during the open era.',
      'assets/players/serena.jpg',  'https://www.britannica.com/biography/Serena-Williams'),
  Player('Novak Djokovic', 'Novak Djokovic (Serbian: Новак Ђоковић, Novak Đoković, pronounced [nôvaːk dʑôːkovitɕ] ⓘ;[6] born 22 May 1987) is a Serbian professional tennis player. He has been ranked No. 1 for a record total of 428 weeks in a record 13 different years by the ATP, and finished as the year-end No. 1 a record eight times.[7] Djokovic has won a record 24 Grand Slam men\'s singles titles, including a record ten Australian Open titles. Overall, he has won 99 singles titles, including a record 72 Big Titles: 24 majors, a record 40 Masters, a record seven year-end championships, and an Olympic gold medal. Djokovic is the only man in tennis history to be the reigning champion of all four majors at once across three different surfaces. In singles, he is the only man to achieve a triple Career Grand Slam, and the only player to complete a Career Golden Masters, a feat he has accomplished twice. Djokovic is the only player in singles to have won all of the Big Titles over the course of his career, having completed the Career Super Slam as part of that accomplishment..',
      'assets/players/djokovic.jpg',  'https://en.wikipedia.org/wiki/Novak_Djokovic'),
  Player('Maria Sharapova',' Maria began hitting tennis balls at the age of four. At the age of six, she participated in an exhibition in Moscow which featured Martina Navratilova. At the age of nine, she began training at Nick Bollettieri\'s Tennis Academy. During her first two years at the Academy, she was separated from her mother Yelena due to visa restrictions and finances. Maria would travel to tournaments with her father, Yuri, and coaches Robert Lansdorp, and 1984 Australian Open boys\' doubles champion Mike Baroch. Yuri eventually replaced Baroch and Lansdorp with former ATP Top 100 player Michael Joyce, who guided Maria to 3 Grand Slam titles and the World #1 ranking (Lansdorp was quoted as saying in 2004: \"I\'ve never received anything from one player. Not even a \$500 gift.',
      'assets/players/sharapova.jpg',  'https://www.imdb.com/name/nm1682495/bio/'),
];

final List<Player> baseballPlayers = [
  Player('Babe Ruth', 'Babe Ruth (born February 6, 1895, Baltimore, Maryland, U.S.—died August 16, 1948, New York, New York) was chosen as one of the first five members of the Baseball Hall of Fame in 1936, a year after he finished his career. He transformed baseball through his home-run hitting, which produced an offensive revolution in the sport. His accomplishments, together with his personal charisma and his rags-to-riches life story, made Ruth the most celebrated American athlete of his era, immortalized as the Sultan of Swat and the Bambino.',
      'assets/players/ruth.jpg',  'https://www.baberuth.com'),
  Player('Barry Bonds', 'American baseball player.',
      'assets/bonds1.jpg', 'https://www.britannica.com/biography/Babe-Ruth'),
  Player('Hank Aaron', 'Hank Aaron (born February 5, 1934, Mobile, Alabama, U.S.—died January 22, 2021, Atlanta, Georgia) was an American professional baseball player who surpassed batting records set by some of the greatest hitters in the game, including Babe Ruth, Ty Cobb, and Stan Musial. Aaron played 23 seasons in Major League Baseball, from 1954 to 1976, mostly for the Braves in Milwaukee and Atlanta.',
      'assets/players/hank.jpg', 'https://www.britannica.com/biography/Hank-Aaron'),
  Player('Willie Mays', 'Willie Mays (born May 6, 1931, Westfield, Alabama, U.S.—died June 18, 2024, Palo Alto, California) was an American professional baseball player considered by many to be the greatest all-around player in the history of the game. Mays ranks among the all-time leaders in home runs, hits, runs scored, and runs batted in (RBI). In 1954 he helped the New York (later San Francisco) Giants win the World Series. In addition to his outstanding play, Mays was known for his exuberant personality.',
      'assets/players/mays.jpg',  'https://www.britannica.com/biography/Willie-Mays'),
  Player('Ken Griffey Jr.', 'Ken Griffey, Jr. (born November 21, 1969, Donora, Pennsylvania, U.S.) is an American professional baseball player who was one of the iconic athletes of the 1990s and ranked among the best power hitters and defensive outfielders of all time.',
      'assets/players/griffey1.jpg',  'https://www.britannica.com/biography/Ken-Griffey-Jr'),
];

final List<Player> hockeyPlayers = [
  Player('Wayne Gretzky', 'Wayne Gretzky (born January 26, 1961, Brantford, Ontario, Canada) is a former ice hockey player from Canada who is considered by many to be the greatest player in the history of the National Hockey League (NHL). During his career, which included nine seasons with the Edmonton Oilers, Gretzky set numerous NHL records, including for most points (2,857) and goals (894).',
      'assets/players/gretzky1.jpg',  'https://www.britannica.com/biography/Wayne-Gretzky'),
  Player('Mario Lemieux', '''Mario Lemieux (born October 5, 1965, Montreal, Quebec, Canada) is a Canadian professional ice hockey player and owner who is considered one of the greatest players in the history of the sport.
      Lemieux starred in the Quebec Major Junior Hockey League as a teenager, setting a league record by scoring 282 points in 70 games during the 1983–84 season. He was chosen by the Pittsburgh Penguins with the first overall selection in the 1984 National Hockey League (NHL) draft. Lemieux had an outstanding rookie season: he scored 100 points, was named to the All-Star team, and was awarded the Calder Memorial Trophy as the NHL’s rookie of the year. He scored more than 100 points in each of his first six years in Pittsburgh and was named NHL Most Valuable Player (MVP) for the 1987–88 season, but the Penguins only qualified for the playoffs once during that period and were eliminated in the second round.',''',
      'assets/players/lemieux2.jpg', 'https://www.britannica.com/biography/Mario-Lemieux'),
  Player('Bobby Orr', '''Bobby Orr (born March 20, 1948, Parry Sound, Ontario, Canada) is a Canadian American professional ice hockey player who was the first defenseman to lead the National Hockey League (NHL) in scoring. He is considered one of the sport’s greatest players.
Orr came to the attention of Boston Bruin scouts when he was 12, and he was signed to a junior amateur contract. He joined the Bruins in 1966, when he had reached the legally required age of 18, and played with them for 10 seasons, during which time he helped the Bruins to the playoffs eight consecutive seasons and to two Stanley cups (1970 and 1972). ''',
      'assets/players/orr1.jpg', 'https://www.britannica.com/biography/Bobby-Orr'),
  Player('Sidney Crosby', '''Sidney Crosby (born August 7, 1987, Cole Harbour, Nova Scotia, Canada) is a Canadian ice hockey player who in 2007 became the youngest captain of a National Hockey League (NHL) team and who led the Pittsburgh Penguins to three Stanley Cup championships (2009, 2016, and 2017).''',
      'assets/players/crosby1.jpg',  'https://www.britannica.com/biography/Sidney-Crosby'),
  Player('Gordie Howe', '''Gordie Howe (born March 31, 1928, Floral, Saskatchewan, Canada—died June 10, 2016, Toledo, Ohio, U.S.) was a Canadian professional ice hockey player who led the Detroit Red Wings to four Stanley Cup championships (1950, 1952, 1954, and 1955) and to seven consecutive first-place regular-season finishes (1949–55) in a career that encompassed a record 1,767 NHL games played over 32 seasons (25 of them with the Red Wings).''',
      'assets/players/howe1.jpg',  'https://www.britannica.com/biography/Gordie-Howe'),
];

final List<Player> badmintoPlayers = [
  Player('Lin Dan', ''' Lin Dan is widely regarded as the greatest badminton player of all time, and one of the greatest athletes of all time. He is the only player to win all nine major international titles, including two Olympic gold medals, five World Championships, six All England Open titles, and two Asian Games gold medals. He is also the only player to complete the “Super Grand Slam”, winning all nine titles by the age of 28. He is known for his explosive and unpredictable style of play, as well as his passion and emotion on the court. He is nicknamed “Super Dan” by his fans and peers, and is still active.''',
      'assets/players/lin.jpg',  'https://www.geeksforgeeks.org/best-badminton-players/#1-lin-dan'),
  Player('Lee Chong Wei', '''Lee Chong Wei is one of the most consistent and resilient badminton players of all time. He was the world number one for a total of 348 weeks, and the only player to rank first for more than a year without interruption. He won three Olympic silver medals, in 2008, 2012, and 2016, becoming the most successful Olympic badminton player without a gold medal. He also won four Commonwealth Games gold medals, and a record 46 Superseries titles. He was known for his speed and agility, as well as his rivalry with Lin Dan, which was considered one of the greatest in sports history. He retired in 2019, after battling cancer and injuries. ''',
      'assets/players/lee.jpg', 'https://www.geeksforgeeks.org/best-badminton-players/#1-lin-dan'),
  Player('Gao Ling', ''' Gao Ling is one of the most successful and versatile badminton players of all time. She won four Olympic medals, two gold, one silver, and one bronze, in both women’s doubles and mixed doubles. She also won five World Championships, four in mixed doubles and one in women’s doubles, and six Asian Games gold medals, three in each event. She was known for her consistency and reliability, as well as her cheerful and positive attitude on the court. She retired in 2011, after a long and fruitful career.''',
      'assets/players/gso.jpg',  'https://www.geeksforgeeks.org/best-badminton-players/#1-lin-dan'),
  Player(' Taufik Hidayat', '''Taufik Hidayat is one of the most talented and charismatic badminton players of all time. He won the Olympic gold medal in 2004, and the World Championship in 2005, becoming the first player to achieve both feats. He also won three Asian Championships and five Indonesian Open titles. He was famous for his backhand smash, which was considered one of the best shots in the history of the sport. He was also known for his rivalry with Lin Dan, which produced some of the most memorable matches in badminton.''',
      'assets/players/Taufiq.jpg',  'https://www.geeksforgeeks.org/best-badminton-players/#1-lin-dan'),
  Player('Rudy Hartono', '''Rudy Hartono is one of the most dominant and influential badminton players of all time. He won the All England Open eight times, a record that still stands today, significantly impacting badminton rankings. He also clinched the Olympic gold medal in 1972 when badminton was a demonstration sport, and secured four Thomas Cup titles with the Indonesian team from 1970 to 1979. Known for his charisma and flair on the court, as well as his powerful smashes and net play, Hartono’s style and achievements have left a lasting legacy in the world of badminton. He retired in 1981, after a decade of supremacy in the sport, having firmly established himself at the pinnacle of badminton rankings.''',
      'assets/players/rudy.jpg',  'https://www.geeksforgeeks.org/best-badminton-players/#1-lin-dan'),
];

final List<Player> golfPlayers = [
  Player('Tiger Woods', '''Tiger (Eldrick) Woods, born December 30, 1975, is a professional golfer and entrepreneur.
Since turning professional in 1996, Tiger has built an unprecedented competitive career. His achievements on the course–106 worldwide wins and 15 majors–have mirrored his success off the course as well.
Woods serves as Founder and CEO of TGR, a multibrand enterprise comprised of his various companies and philanthropic endeavors, including TGR Design, the golf course design company; The TGR Foundation, a charitable foundation; TGR Live, an events production company; and The Woods Jupiter, an upscale sports restaurant.''',
      'assets/players/woods1.jpg',  'https://tigerwoods.com/biography/'),
  Player('Jack Nicklaus', ''' Nicklaus was a member of the winning U.S. World Cup team six times,(1963, 1964, 1966, 1967, 1971, 1973) and was a record three-time individual World Cup winner (1963, 1964, 1971). By 1986 he had played in 100 major championships, finishing in the top three 45 times''',
      'assets/players/nicklaus1.jpg',  'https://en.wikipedia.org/wiki/Jack_Nicklaus'),
  Player('Arnold Palmer', '''Arnold Daniel Palmer (September 10, 1929 – September 25, 2016) was an American professional golfer who is widely regarded as one of the greatest and most charismatic players in the sport's history. Dating back to 1955, he won numerous events on both the PGA Tour and the circuit now known as PGA Tour Champions. Nicknamed "The King", Palmer was one of golf's most popular stars and seen as a trailblazer, the first superstar of the sport's television age, which began in the 1950s.''',
      'assets/players/palmer1.jpg',  'https://en.wikipedia.org/wiki/Arnold_Palmer'),
  Player('Phil Mickelson', '''Philip Alfred Mickelson (born June 16, 1970) is an American professional golfer who currently plays in the LIV Golf League. He has won 45 events on the PGA Tour, including six major championships: three Masters titles (2004, 2006, 2010), two PGA Championships (2005, 2021),[3] and one Open Championship (2013).[4] With his win at the 2021 PGA Championship, Mickelson became the oldest major championship winner in history at the age of 50 years, 11 months, and 7 days.[5] He is nicknamed "Lefty", as he plays left-handed.''',
      'assets/players/mickelson1.jpg',  'https://en.wikipedia.org/wiki/Phil_Mickelson'),
  Player('Rory McIlroy', '''Rory Daniel McIlroy MBE (born 4 May 1989) is a Northern Irish professional golfer who is a member of both the European Tour and the PGA Tour.[5] He is former world number one in the Official World Golf Ranking, and has spent over a hundred weeks in that position during his career. He is the only person to win the FedEx Cup three times, surpassing Tiger Woods' two. He is a four-time major champion, winning the 2011 U.S. Open, 2012 PGA Championship, 2014 Open Championship, and 2014 PGA Championship. Along with Jack Nicklaus and Tiger Woods, he is one of three players to win four majors by age 25''',
      'assets/players/mcilroy1.jpg', 'https://en.wikipedia.org/wiki/Rory_McIlroy'),
];

final List<Player> volleyBallplayers = [
  Player('Maksim Mikhaylov', '''Maxim Mikhaylovich Mikhaylov (Russian: Максим Михайлович Михайлов, IPA: [mɐˈksʲim mʲɪˈxaɪ̯ɫəf]; born 19 March 1988) is a Russian professional volleyball player, a member of the Russia men's national volleyball team and Russian club VC Zenit-Kazan, gold medalist at the Olympic Games London 2012, silver medalist at the Olympic Games Tokyo 2020, bronze medalist at the Olympic Games Beijing 2008, gold medalist at the World Cup 2011, European Champion 2013 and 2017 and a multiple medalist of the World League ''',
      'assets/players/Maxim.jpg',  'https://en.wikipedia.org/wiki/Maxim_Mikhaylov'),
  Player('Wilfredo León', '''Wilfredo León Venero (born 31 July 1993) is a professional volleyball player who plays as an outside hitter for PlusLiga club Bogdanka LUK Lublin.[2] Born in Cuba, he represents Poland at international level. He was a member of his country of birth's national team from 2007 to 2012.
Considered by many as one of a kind, he led Cuba to the silver medal at the 2010 World Championship held in Italy, alongside Yoandy Leal and Robertlandy Simon. He is considered one of the leaders of the "Generation of Miracle" of Cuban volleyball by many experts.''',
      'assets/players/will.jpg', 'https://en.wikipedia.org/wiki/Wilfredo_Le%C3%B3n'),
  Player('Sergio Dutra Santos', '''Sérgio Dutra Santos (born 15 October 1975 in Diamante do Norte) is a Brazilian professional volleyball player. He is also known as Serginho or Escadinha. He plays in the libero position. In 2009 he became the first Libero to be named MVP in the World League.''',
      'assets/players/Serginho.jpg',  'https://simple.wikipedia.org/wiki/Sergio_Santos'),
  Player('Osmany Juantorena', '''Osmany Juantorena Portuondo (born 12 August 1985) is a Cuban-born Italian professional volleyball player,[1] a member of Cuba national volleyball team in 2003–2006 and current member of Italian club Modena Volley.[2] Juantorena was bronze medalist of the 2005 World League and silver medalist 2016 Summer Olympics. He is a multiple winner of the CEV Champions League and FIVB Club World Championship with the Italian club Trentino Volley. Juantorena is the record owner of the highest number of Most Valuable Player awards at FIVB Club World Championship, with 4 times''',
      'assets/players/osmani.jpg',  'https://en.wikipedia.org/wiki/Osmany_Juantorena'),
  Player('Dmitriy Muserskiy', '''Dmitriy Muserskiy (born 29 October 1988) is a Russian volleyball player. He is originally from Ukraine. He is a member of the Russian men's national volleyball team and the Russian club Belogorie Belgorod. He competed in the Olympic Games in 2012, European Championships in 2013, the World Cup in 2011, and the World League.''',
      'assets/players/dimtri.jpg',  'https://simple.wikipedia.org/wiki/Dmitriy_Muserskiy'),
];

final List<Player> tableTennisPlayers = [
  Player('Ma Long', '''Ma Long (Chinese: 马龙; pinyin: Mǎ Lóng; born 20 October 1988) is a Chinese professional table tennis player, six-time Olympic champion, and three-time World Champion. He is the reigning World Cup singles champion. Widely regarded as the greatest table tennis player of all time,[10][11][12] he is the first and only male player to complete a career Double Grand Slam as the Olympic gold medalist in men's singles in 2016 and 2020.[13] He is also the first and only table tennis athlete to win 6 gold medals in summer Olympics — no other table tennis player has more than four.''',
      'assets/players/malong1.jpg',  'https://en.wikipedia.org/wiki/Ma_Long'),
  Player('Ding Ning', '''Ding Ning (simplified Chinese: 丁宁; traditional Chinese: 丁寧; pinyin: Dīng Níng; born 20 June 1990) is a former Chinese table tennis player.[2] She was the winner of women's singles in the 2011 World Table Tennis Championships.

At the 2015 World Table Tennis Championships, Ding won her second world title in women's singles by defeating her compatriot Liu Shiwen 4–3 in the final. At the 2017 World Table Tennis Championships in Düsseldorf Ding defeated Zhu Yuling 4–2 in the final, becoming World Champion for the third time. She won the women's table tennis singles gold medal at the 2016 Summer Olympics where she beat compatriot Li Xiaoxia in the women's singles final. She previously won the silver medal at the 2012 Summer Olympics in the women's singles event.''',
      'assets/players/dingning1.jpg',  'https://en.wikipedia.org/wiki/Ding_Ning'),
  Player('Jan-Ove Waldner', '''Jan-Ove Waldner (born October 3, 1965 in Stockholm[1]) is a male table tennis player from Sweden. He was the third man in table tennis history to become Grand-Slam champion. He played to 2012 in the German club TTC Röhn-Sprudel Fulda Maberzell and was the best Swedish table tennis player.''',
      'assets/players/waldner1.jpg', 'https://simple.wikipedia.org/wiki/Jan-Ove_Waldner'),
  Player('Timo Boll', '''Timo Boll (born March 8, 1981 in Erbach) is a German table tennis player.[1] He is the best German table tennis player and is in China one of the most popular table tennis players in the history. He is a lefthanded-player and uses the Shakehand-grip. At the World Championships 2011 in Rotterdam Boll won a bronze medal in the singles.[2] He is a wonder in the table tennis world and got 11 times the German National Championships.''',
      'assets/players/boll1.jpg',  'https://simple.wikipedia.org/wiki/Timo_Boll'),
  Player('Fang Bo', '''Fang Bo (Chinese: 方博; pinyin: Fāng Bó; born November 6, 1992) is a Chinese male table tennis player.[4] In 2002, Fang Bo became a member of the Shandong Luneng table tennis club. In 2009, he joined the China national table tennis first team.[citation needed] In the same year December 2009, he won all four team and individual titles at the 2009 World Junior Championships,[5] becoming the first youth player to accomplish this feat in China. At his peak in 2015, he reached the men's singles final at the World Championships by defeating the second-seeded Xu Xin and the defending champion Zhang Jike. Fang Bo then obtained his first world table tennis champion title in 2016 during the World Team Table Tennis Championships. ''',
      'assets/players/fangbo1.jpg',  'https://en.wikipedia.org/wiki/Fang_Bo'),
];
