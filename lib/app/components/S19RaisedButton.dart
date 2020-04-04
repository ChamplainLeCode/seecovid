import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:seecovid/app/utils/Styles.dart';

class S19RaisedButton extends StatelessWidget {

  final String text;
  final IconData icon;
  final Function onPressed;
  List<Color> colors = [];
  final Color textColor;

  S19RaisedButton({
    this.text, this.icon,
    this.onPressed,
    this.colors,
    this.textColor
  }): assert( (text != null ) || ( icon != null) , "Text and Icon cannot be null at same time");

  @override
  Widget build(BuildContext context) {
    if( colors == null || colors.length < 2)
      colors = [Style.genrale.white, Style.genrale.white];
    return GestureDetector(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Style.genrale.white,
          borderRadius: BorderRadius.circular(10),
          //border: Border.all(color:Colors.red),
          gradient: LinearGradient(
            colors: colors,
          //  stops: proportions
          )
        ),
        child: Center(
          child: Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(MdiIcons.squareEditOutline,
                size: 20,
                color: this.textColor ?? Style.genrale.red,
              ),
              Text("  $text".toUpperCase(),
                style: TextStyle(
                  color: this.textColor ?? Style.genrale.red,
                  fontWeight: FontWeight.w300
                ),
              )
            ],
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}