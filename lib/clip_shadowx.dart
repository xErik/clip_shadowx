library clip_shadowx;

import 'package:clip_shadowx/src/painter.dart';
import 'package:flutter/widgets.dart';

/// Class will (a) clip a widget and (b) apply a shadow to the widget.
class ClipShadow extends StatelessWidget {
  /// A list of [BoxShadow] which will appear behind and around the [CustomClipper].
  final List<BoxShadow> shadows;

  /// The clipper to apply.
  final CustomClipper<Path> clipper;

  /// The [Widget] below this widget in the tree.
  final Widget child;

  /// Constructor.
  const ClipShadow(
      {super.key,
      required this.shadows,
      required this.clipper,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ClipShadowPainter(shadows: shadows, clipper: clipper),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
