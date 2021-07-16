import 'package:flutter/material.dart';

class ImageLogoHolder extends StatelessWidget {
  final String imageUrl;
  const ImageLogoHolder(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: Image(
            image: AssetImage(this.imageUrl), height: 25, fit: BoxFit.cover));
  }
}
