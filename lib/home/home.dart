import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../recommend/recommend.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: new Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelColor: Colors.lightBlue,
                unselectedLabelColor: Colors.black,
                indicatorWeight: 1,
                isScrollable: true,
                // labelPadding: EdgeInsets.frromLTRB(10, 0, 0, 0),
                labelStyle: TextStyle(fontSize: 14),
                tabs: <Widget>[
                  Tab(text: '关注'),
                  Tab(text: '推荐'),
                  Tab(text: '热榜'),
                  Tab(text: '前端'),
                ],
              ),
            ),
          ),
          title: Header(),
        ),
        body: TabBarView(
            children: <Widget>[
              ListViewContnet(),
              Recommend(),
              ListViewContnet(),
              ListViewContnet(),
            ],
          ),
        bottomNavigationBar: new BottomSection(),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.search),
                        Expanded(
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '搜索文章/标签/用户',
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                            ),
                            inputFormatters: <TextInputFormatter>[
                              LengthLimitingTextInputFormatter(20),
                            ],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text(
                      '标签',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: new Text('home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: new Text('home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: new Text('home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: new Text('home')),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}

const TITLE = "测试";

class ListViewContnet extends StatelessWidget {
  const ListViewContnet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
      ],
    );
  }
}
