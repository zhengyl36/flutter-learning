import 'package:flutter/material.dart';

class Recommend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Color(0xfff2f2f2),
        child: Column(
          children: <Widget>[
            HotRecommend(),
            Padding(padding: EdgeInsets.only(top: 10),),
            Card(
              child: ListTile(
                title: Text('无限滚动'),
                subtitle: Text('226人赞·karl·昨天'),
                  trailing: Image(
                    image: AssetImage("assets/icon.png", ),
                    width: 48,
                    height: 48,
                  )
              )
            )
          ],
        ),
    );
  }
}

final listItem = [
  {
    "title": "实现无限滚动",
    "like": 1,
    "user": "karl1",
    "imageUrl": "assets/icon.png"
  },
  {
    "title": "实现无限滚动",
    "like": 2,
    "user": "karl2",
    "imageUrl": "assets/icon.png"
  },
  {
    "title": "123123131",
    "like": 3,
    "user": "karl3",
    "imageUrl": "assets/icon.png"
  }
];


class HotRecommend extends StatelessWidget{
  List<Widget> _getList(){
    return listItem.map((element) =>
      Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xfff2f2f2)))
          ),
          child: ListTile(
              title: Text('${element['title']}'),
              subtitle: Text('${element['like']}人赞·${element['user']}·昨天'),
              trailing: Image(
                image: AssetImage('${element['imageUrl']}',),
                width: 48,
                height: 48,
              )
          )
      )
    ).toList();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
//      height: 200,
      child: Column(
         children: <Widget>[
           Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               border: Border(bottom: BorderSide(color: Color(0xfff2f2f2)))
             ),
             child: Flex(
               direction: Axis.horizontal,
               children: <Widget>[
                 Expanded(
                   flex: 4,
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.update, color: Colors.lightBlue),
                       Padding(padding: EdgeInsets.only(left: 5)),
                       Text('热门推荐', style: TextStyle(color: Colors.lightBlue)),
                     ],
                   )
                 ),
                 Expanded(
                   flex: 1,
                   child: Row(
                     children: <Widget>[
                       Text('文章榜'),
                       Padding(padding: EdgeInsets.only(left: 5)),
                       Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xffcccccc),),
                     ],
                   )
                 )
               ],
             )
           ),
           Column(
             children: this._getList()
           ),
         ],
      ),
    );
  }
}


