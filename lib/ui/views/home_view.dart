import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:inunpad/core/models/article.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 2;
  final tabs = [
    Center(
      child: Text('People'),
    ),
    Center(
      child: Text('Forum'),
    ),
    HomePage(),
    Center(
      child: Text('Aspirasi'),
    ),
    Center(
      child: Text('Calender'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: tabs[_currentIndex]),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Color(0xFF16415A),
        activeColor: Color(0xFF16415A),
        items: [
          TabItem(icon: Icons.people),
          TabItem(icon: Icons.forum),
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.mic),
          TabItem(icon: Icons.calendar_today),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      date: '21 April,2020',
      eventName: 'Community Gathering',
      image: 'images/camp.png',
      location: 'jatinangor',
    ),
    Article(
      date: '21 April,2020',
      eventName: 'Community Gathering',
      image: 'images/camp.png',
      location: 'jatinangor',
    ),
    Article(
      date: '21 April,2020',
      eventName: 'Community Gathering',
      image: 'images/camp.png',
      location: 'jatinangor',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            color: Color(0xFFFFC400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image(
                  image: AssetImage('images/logo.png'),
                  height: 74.0,
                  width: 65.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/abc.png'),
                  radius: 50.0,
                ),
                Icon(
                  Icons.settings,
                  size: 25.0,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                primary: true,
                crossAxisCount: 1,
                shrinkWrap: true,
                childAspectRatio: 1.4,
                children: List.generate(
                  articles.length,
                  (index) {
                    return EventBox(
                      article: articles[index],
                      date: articles[index].date,
                      eventName: articles[index].eventName,
                      location: articles[index].location,
                      image: articles[index].image,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EventBox extends StatelessWidget {
  EventBox(
      {this.date, this.eventName, this.image, this.location, this.article});
  final Article article;
  final String image;
  final String eventName;
  final String date;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      width: 335.0,
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 6.0, offset: Offset(0, 3))
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 137.0,
            width: 296.0,
            child: Image(
              image: AssetImage("$image"),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 6.0,
              ),
              Text(
                "$eventName",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "$location",
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.calendar_today,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "$date",
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
