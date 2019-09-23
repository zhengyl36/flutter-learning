import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Header(),
//          TabViewComponent(),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffdedede),
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
                  children: <Widget>[Icon(Icons.settings), Text('标签')],
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


//class TabViewComponent extends StatefulWidget{
//  TabViewComponent({Key key}) : super(key: key);
//  _TabViewComponentState createState() => _TabViewComponentState();
//}
//
//class _TabViewComponentState extends State<TabViewComponent> with SingleTickerProviderStateMixin{
//  TabController _tabController;
//
//  @override
//  void initState(){
//    super.initState();
//    this._tabController = new TabController(length: 4, vsync: this);
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: TabBar(
//          controller: this._tabController,
//          tabs: <Widget>[
//            Tab(text: '1',),
//            Tab(text: '2',),
//            Tab(text: '3',),
//            Tab(text: '4',),
//          ],
//        ),
//      ),
//      body: TabBarView(
//        controller: this._tabController,
//          children: <Widget>[
//
//
//          ],
//      )
//    );
//  }
//}