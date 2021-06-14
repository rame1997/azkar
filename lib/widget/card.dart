import 'package:azkar/widget/text.dart';
import 'package:flutter/material.dart';

class cardCustom extends StatelessWidget {
  final String title;
  final String subtitle;
  final String fontfamily;
  final FontWeight fontweighTtitle;
  final FontWeight fontweighSubTtitle;
  final double size;
  final Color color;
  final TextAlign align;
  final IconData leading;
  final IconData trailing;

  cardCustom(this.title, this.fontfamily, this.fontweighTtitle, this.size,
      this.color, this.align, this.leading, this.trailing, this.subtitle, this.fontweighSubTtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(leading),
        title: TextCustom(
            title, fontfamily, fontweighTtitle, size, color,align),
        subtitle: TextCustom(
            subtitle, 'Worksans', fontweighSubTtitle, size, color,align),
        trailing:  Icon(trailing),
      ),
    );
  }
}
