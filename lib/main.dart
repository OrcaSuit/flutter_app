import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '콜라보',
        home: Scaffold(
          appBar: AppBar(
            title: Text('콜라보'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.format_paint),
            onPressed: () {},
          ),
          body: Center(
            child: Text('메인'),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('첫 번째')),
      body: Center(
        child: RaisedButton(
          child: Text('두 번째 화면으로 이동', style: TextStyle(fontSize: 21)),
          color: Colors.blue,
          onPressed: () {
            // push에 전달되는 두 번째 매개변수는 Route<T> 클래스.
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (BuildContext context) {
              return Second();
            }));

            // 화살표 문법 적용
            // Navigator.push(context,
            // MaterialPageRoute<void>(builder: (BuildContext context) => Second())
            // );

            // 위와 같은 코드. of 메소드 호출이 불편하다.
            // Navigator.of(context).push(
            // MaterialPageRoute<void>(builder: (BuildContext context) => Second())
            // );
          },
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('두 번째')),
      body: Center(
        child: RaisedButton(
          child: Text('처음 화면으로 돌아가기', style: TextStyle(fontSize: 21)),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);

            // 위와 같은 코드
            // Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
