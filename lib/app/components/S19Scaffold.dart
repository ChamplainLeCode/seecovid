import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seecovid/app/utils/Styles.dart';

class S19Scaffold extends StatelessWidget{

  final PreferredSizeWidget appBar;
  final Widget body;
  final Widget bottomNavigationBar,
               bottomSheet,
               drawer,
               endDrawer,
               floatingActionButton;
  final List<Widget> persistentFooterButtons;
  final DragStartBehavior drawerDragStartBehavior;
  final double drawerEdgeDragWidth;
  final Color drawerScrimColor;

  final bool extendBody,
             extendBodyBehindAppBar,
             primary,
             resizeToAvoidBottomInset,
             resizeToAvoidBottomPadding;
  
  final FloatingActionButtonAnimator floatingActionButtonAnimator;

  final FloatingActionButtonLocation floatingActionButtonLocation;

  final Key key;

  S19Scaffold({
    this.body,
    this.appBar,
    this.primary = true,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerEdgeDragWidth,
    this.drawerScrimColor,
    this.endDrawer,
    this.extendBody = true,
    this.extendBodyBehindAppBar = false,
    this.floatingActionButton,
    this.floatingActionButtonAnimator,
    this.floatingActionButtonLocation,
    this.key,
    this.persistentFooterButtons,
    this.resizeToAvoidBottomInset,
    this.resizeToAvoidBottomPadding
  });

  Widget build(BuildContext context){

    return Scaffold(
      appBar: this.appBar,
      bottomNavigationBar: this.bottomNavigationBar,
      bottomSheet: this.bottomSheet,
      drawer: this.drawer,
      drawerDragStartBehavior: this.drawerDragStartBehavior,
      drawerEdgeDragWidth: this.drawerEdgeDragWidth,
      drawerScrimColor: this.drawerScrimColor,
      endDrawer: this.endDrawer,
      extendBody: this.extendBody,
      extendBodyBehindAppBar: this.extendBodyBehindAppBar,
      floatingActionButton: this.floatingActionButton,
      floatingActionButtonAnimator: this.floatingActionButtonAnimator,
      floatingActionButtonLocation: this.floatingActionButtonLocation,
      key: this.key,
      persistentFooterButtons: this.persistentFooterButtons,
      primary: this.primary,
      resizeToAvoidBottomInset: this.resizeToAvoidBottomInset,
      resizeToAvoidBottomPadding: this.resizeToAvoidBottomPadding,

      backgroundColor: Colors.transparent,
      body: CustomPaint(
        painter: S19Painting(this.appBar != null),
        child: Center(child: body),
        size: MediaQuery.of(context).size,
      ),
    );
  }

}

class S19Painting extends CustomPainter{

  final bool asAppbar;

  S19Painting(this.asAppbar);

  @override
  void paint(Canvas canvas, Size size) async {
    print(size);
    canvas.drawColor( !asAppbar ? Style.genrale.primary[50] : Style.genrale.white, BlendMode.color);
    canvas.rotate(-45);
    canvas.drawRRect(
      RRect.fromRectAndRadius(( !asAppbar ?
        Rect.fromLTRB(-size.height/15, size.height/10+20, -size.width+10, size.height-120) :
        Rect.fromLTRB(size.height/15-1, size.height/10-14.5, -size.width+79, size.height-81.5)),
        Radius.circular(75)
        ), 
      Paint()..color = !asAppbar ? Style.genrale.white : Style.genrale.primary.withAlpha(0xFF) 
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
