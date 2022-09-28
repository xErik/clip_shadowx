# clip_shadowx

Adds shadows to `Widget` which is clipped by a `Path`. Applies a `CustomClipper` and a list of `BoxShadows` to a `Widget`.

## Getting Started

```
flutter packages add clip_shadowx
```

## Usage

```dart
import 'package:clip_shadowx/clip_shadowx.dart';

ClipShadow(
  clipper: ClipperPolygon(),
  shadows: const [
    BoxShadow(color: Colors.red, blurRadius: 10, spreadRadius: 10)
  ],
  child: Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/CairoEgMuseumTaaMaskMostlyPhotographed.jpg/480px-CairoEgMuseumTaaMaskMostlyPhotographed.jpg'),
),
```

**Result**

![Example](assets/README.jpg "Example")

## Bugs and Requests

If you encounter any problems feel free to open an issue. If you feel the library is missing a feature, please raise a ticket on Github and I'll look into it. Pull request are also welcome.

https://github.com/xErik/clip_shadowx/issues

## Inspiration

Based on this package, added NULL-safety:

[https://pub.dev/packages/clip_shadow](https://pub.dev/packages/clip_shadow)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details