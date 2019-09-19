import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: ListView(
      children: <Widget>[
        new Header(),

      ],
    ),
      bottomNavigationBar: new BottomSection(),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffdedede),
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0)
                      ),
                    ),
                    child: new TextField(
                      decoration: new InputDecoration(
                          hintText: '搜索文章/标签/用户',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.white, size: 20),
                      ),
                      style: TextStyle(fontSize: 16),
                    )
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.settings),
                      Text('标签')
                    ],
                  )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class BottomSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: new Text('home')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: new Text('home')),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: new Text('home')),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: new Text('home')),

      ],

      type: BottomNavigationBarType.fixed,
    );
  }
}