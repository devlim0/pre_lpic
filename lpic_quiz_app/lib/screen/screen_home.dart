import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // 반응형으로 만들기 위해 MediaQuery 사용
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('LPIC Quiz App'),
              backgroundColor: Colors.grey,
              leading: Container(),
            ),
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Image.asset(
                      'images/건터.jpeg', width: width *0.4
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(
                    width * 0.025
                ),
              ),
              Text(
                'LPIC Quiz App',
                style:  TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '덤프를 풀기 전 안내사항입니다. \n 꼼꼼히 읽고 시작 하기를 눌러주세요.',
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: EdgeInsets.all(width * 0.048),
              ),
              _buildStep(width, '1. 랜덤으로 나오는 덤프 20개를 풀어보세요.'),
              _buildStep(width, '2. 정답을 고른 뒤 다음 문제를 눌러주세요.'),
              _buildStep(width, '3. 만점을 향해 도전하세요.'),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
              Container(
                padding: EdgeInsets.only(bottom: width * 0.036),
                child: Center(
                  child: ButtonTheme(
                    minWidth: width * 0.8,
                    height: height * 0.05,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: RaisedButton(child: Text(
                      '시작 하기',
                      style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding:  EdgeInsets.fromLTRB(width * 0.048, width * 0.024, width * 0.048, width *0.024),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}
