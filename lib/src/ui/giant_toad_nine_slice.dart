import 'package:flutter/widgets.dart';

/// Asset-backed nine-slice skin contract for scalable pixel UI surfaces.
class GiantToadNineSlice extends StatelessWidget {
  const GiantToadNineSlice({
    required this.asset,
    required this.centerSlice,
    required this.child,
    super.key,
  });

  final String asset;
  final Rect centerSlice;
  final Widget child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(asset),
        centerSlice: centerSlice,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.none,
      ),
    ),
    child: child,
  );
}
