import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labstudios/Views/Met/home_view_desktop.dart';
import 'package:labstudios/Views/Met/home_view_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MetHome extends StatefulWidget {
  @override
  _MetHomeState createState() => _MetHomeState();
}

class _MetHomeState extends State<MetHome> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
          body: ScreenTypeLayout(
              mobile: MetHomeMobile(),
              tablet: MetHomeDesktop(),
              desktop: MetHomeDesktop()));
    });
  }
}
