
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskquadrant/ui/common_widgets.dart';
import 'package:taskquadrant/viewmodels/home_screen.dart';

class EntryWidget extends StatefulWidget {
  @override
  _EntryWidgetState createState() =>  _EntryWidgetState();
}

class _EntryWidgetState extends State<EntryWidget> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController =  TabController(vsync: this, length: 4);
  }

  @override
  dispose() {
    super.dispose();
    this.tabController.dispose();
  }
  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.red,
      elevation: 0.0,
      title:  Text("Fourth-Quadrant",
          style:  GoogleFonts.roboto(
            fontSize: 23,
          )),
      actions: <Widget>[
        IconButton(
          icon:  Icon(
            Icons.search,
            color: Colors.white,
            size: 28.0,
          ),
          onPressed: () {
            _showSnackBar();
          },
        ),
        IconButton(
          icon:  Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 28.0,
          ),
          onPressed: () {_showSnackBar();},
        ),
      ],
      bottom:  TabBar(
        controller: this.tabController,
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            icon:  Icon(Icons.home, size: 29.0, color: Colors.black54),
          ),
          Tab(
            icon:  Icon(Icons.whatshot, size: 29.0, color: Colors.black54),
          ),
          Tab(
            icon:  Icon(Icons.subscriptions,
                size: 28.0, color: Colors.black54),
          ),
          Tab(
            icon:  Icon(
              Icons.person,
              size: 30.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  _showSnackBar() {
    return Flushbar(
      message:  "Dev in Progress",
      isDismissible: true,
      duration:  Duration(seconds: 3),
    )..show(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: TabBarView(
        controller: this.tabController,
        children: <Widget>[
          HomeScreen(),
          errorWidget(link: "assets/dev_building.jpg",
              errorText: "Dev work in progress",
              context: context,
              width: 1),
          errorWidget(link: "assets/dev_building.jpg",
              errorText: "Dev work in progress",
              context: context,
              width: 1),
          errorWidget(link: "assets/dev_building.jpg",
              errorText: "Dev work in progress",
              context: context,
              width: 1),
        ],
      ),

    );
  }

}