import 'package:flutter/material.dart';

class kListTile extends StatelessWidget {
  final icon;
  final String title;
  final String subTitle;
  final Color;

  const kListTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.Color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Card(
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Color),
            padding: EdgeInsets.all(8),
            child: icon,
          ),
          title: Text(title),
          subtitle: Text(subTitle),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
