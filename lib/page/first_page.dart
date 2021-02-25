import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatelessWidget {
  final dummyItems = [
    'https://img7.yna.co.kr/etc/inner/KR/2020/01/03/AKR20200103136600005_01_i_P2.jpg',
    'https://newsimg.sedaily.com/2020/05/07/1Z2NQ8MV50_1.jpg',
    'http://topclass.chosun.com/news_img/1812/1812_008.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: <Widget>[
            _buildTop(),        // 상단 메뉴
            _buildMiddleTop(),  // 중단 슬라이더
            _buildBottom(),     // 하단 리스트
          ],
        )
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddleTop() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 150
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[Event] This is Event Notification'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
