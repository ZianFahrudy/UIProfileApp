import 'package:dribble_to_flutter/ui/widgets/banner_article_card.dart';
import 'package:dribble_to_flutter/ui/widgets/list_category_item.dart';
import 'package:dribble_to_flutter/ui/widgets/profile_card.dart';
import 'package:dribble_to_flutter/ui/widgets/title_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<String> listImage = [
    //   'https://i1.wp.com/digital-photography-school.com/wp-content/uploads/2019/10/Karthika-Gupta-Compelling-Nature-Photos-6.jpg?fit=1500%2C1000&ssl=1',
    //   'https://composeclick.com/wp-content/uploads/2018/05/nature-1.jpg',
    //   'https://expertphotography.com/wp-content/uploads/2018/07/nature-photography.jpg',
    //   'https://lp-cms-production.imgix.net/news/2019/05/bigpic5.jpg',
    //   'https://cdn.bignewsnetwork.com/ani1603278015.jpg'
    // ];

    List<Map<String, String>> imageList = [
      {
        'imageUrl':
            'https://i1.wp.com/digital-photography-school.com/wp-content/uploads/2019/10/Karthika-Gupta-Compelling-Nature-Photos-6.jpg',
        'category': 'Nature',
        'description': 'Let us plants more trees from this year'
      },
      {
        'imageUrl':
            'https://composeclick.com/wp-content/uploads/2018/05/nature-1.jpg',
        'category': 'Travel',
        'description': 'These are the top places in world to visits'
      },
      {
        'imageUrl':
            'https://expertphotography.com/wp-content/uploads/2018/07/nature-photography.jpg',
        'category': 'Animal',
        'description': 'Let us plants more trees from this year'
      },
      {
        'imageUrl':
            'https://lp-cms-production.imgix.net/news/2019/05/bigpic5.jpg',
        'category': 'Travel',
        'description': 'These are the top places in world to visits'
      },
      {
        'imageUrl': 'https://cdn.bignewsnetwork.com/ani1603278015.jpg',
        'category': 'Travel',
        'description': 'These are the top places in world to visits'
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blueGrey[400],
                  Colors.blueGrey[700],
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                color: Colors.grey[400],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          )),
          SafeArea(
              child: ListView(
            children: [
              // PROFILE CARD
              Padding(
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileCard(),
                    SizedBox(
                      height: 20,
                    ),
                    // TEXT TITLE ARTICLE
                    TitleCard(),
                    SizedBox(
                      height: 20,
                    ),
                    // LIST CATEGORY
                    ListCategoryItem(imageList: imageList),
                    SizedBox(
                      height: 20,
                    ),
                    // BANNER ARTICLE
                    BannerArticleCard(),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
