import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrmsios/Helper/color.dart';
import 'package:mrmsios/constant/assets.dart';

class DefaultImageView extends StatefulWidget {

  final String imageUrl;



  DefaultImageView({
    this.imageUrl,

  });

  @override
  _DefaultImageView createState() => _DefaultImageView();

}

class _DefaultImageView extends State<DefaultImageView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.imageUrl == null ?
    Container(
      alignment: Alignment.center,
      child: Image.asset(Assets.noProfile),
    ) :
    CachedNetworkImage(
        imageUrl: widget.imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          width: 48,
          height: 48,
          color: Colors.white,
          padding: const EdgeInsets.all(8),
          child: Icon(Icons.file_download),
        ),
        errorWidget: (context, url, error) => Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(8),
          child: Icon(Icons.insert_drive_file),
        )
    );
  }
}