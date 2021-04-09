import 'package:dribble_to_flutter/ui/widgets/image_list_item.dart';
import 'package:flutter/material.dart';

class ListCategoryItem extends StatelessWidget {
  const ListCategoryItem({
    Key key,
    @required this.imageList,
  }) : super(key: key);

  final List<Map<String, String>> imageList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: imageList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 0 : 10,
                ),
                child: ImageListItem(
                  listImage: imageList[index]['imageUrl'],
                  category: imageList[index]['category'],
                  description: imageList[index]['description'],
                ),
              )),
    );
  }
}
