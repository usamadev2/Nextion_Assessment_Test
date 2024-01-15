import 'package:flutter/material.dart';

/*------------------------ Extension for spacing b/w widgets on num  ------------------------*/
extension SpaceXY on num {
  Widget get spaceX => SizedBox(width: toDouble());
  Widget get spaceY => SizedBox(height: toDouble());
}
