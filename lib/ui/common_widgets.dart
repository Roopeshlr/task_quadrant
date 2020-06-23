import 'package:flutter/cupertino.dart';

errorWidget({link,errorText,context,width}) {
  return Center(
      child:Column(
        children: <Widget>[
          Image.asset(link,width: MediaQuery.of(context).size.width/width,),
          Text(errorText)
        ],
      )
  );
}