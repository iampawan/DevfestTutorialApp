import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_demo/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Sponsors",
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl: "https://devfest.gdgkolkata.org/assets/img/logos/gd.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "https://devfest.gdgkolkata.org/assets/img/jetbrains.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Kotlin-logo.svg/220px-Kotlin-logo.svg.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://images.g2crowd.com/uploads/product/image/large_detail/large_detail_0016c93c710cf35990b999cba3a59bae/firebase.png",
          )
        ],
      ),
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200,
          width: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
