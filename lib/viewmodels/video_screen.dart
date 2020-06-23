import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskquadrant/main.dart';
import 'package:taskquadrant/ui/common_widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoScreen extends StatefulWidget {

  final String id;
  final String title;

  VideoScreen({this.id,this.title});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {

  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.title,style: GoogleFonts.roboto(
              color: Colors.black,fontSize: 16),),
            SizedBox(width: 0,height: 16,),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            SizedBox(width: 0,height: 24,),
            Text("Comments: ",style: GoogleFonts.roboto(
                color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(width: 0,height: 24,),
            errorWidget(link:"assets/no_comments.jpg",errorText:"No Comments",context: context,width: 2)
          ],
        ),
      ),
    );
  }

}