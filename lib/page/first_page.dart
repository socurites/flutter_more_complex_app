import 'package:flutter/cupertino.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),        // 상단 메뉴
        _buildMiddleTop(),  // 중단 슬라이더
        _buildBottom(),     // 하단 리스트
      ],
    );
  }

  Widget _buildTop() {
    return Text('Top');
  }

  Widget _buildMiddleTop() {
    return Text('Middle Top');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}
