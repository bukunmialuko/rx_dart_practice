import 'package:flutter/material.dart';
import 'package:jovial_svg/jovial_svg.dart';

class JovialSvgPage extends StatefulWidget {
  final ScalableImage firstSI;
  final ScalableImage secondSI;

  const JovialSvgPage({Key? key, required this.firstSI, required this.secondSI}) : super(key: key);

  @override
  State<JovialSvgPage> createState() => _JovialSvgPageState();
}

class _JovialSvgPageState extends State<JovialSvgPage> {
  ScalableImage? si;
  ScalableImage? si2;

  final _siWidgetKey = GlobalKey<State<JovialSvgPage>>();

  @override
  void initState() {
    super.initState();
    si = widget.firstSI;
    si2 = widget.secondSI;
  }

  @override
  Widget build(BuildContext context) {
    // var b = AssetBundle();
    // final firstSI = await assets[0].forType(assets[0].defaultType, rootBundle);

    // return Scaffold(
    //     body: Column(
    //   children: [
    //     Expanded(
    //       child: RepaintBoundary(
    //         child: ScalableImageWidget(
    //           si: si!,
    //           key: _siWidgetKey,
    //           alignment: Alignment.center,
    //           scale: double.infinity,
    //           background: Colors.white,
    //         ),
    //       ),
    //     )
    //   ],
    // ));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return index % 2 == 0
                    ? Center(
                        child: _ActionIconBg(
                        icon: RepaintBoundary(
                          child: ScalableImageWidget(
                            si: si!,
                            // key: _siWidgetKey,
                            alignment: Alignment.center,
                            scale: double.infinity,
                            background: Colors.white,
                          ),
                        ),
                      ))
                    // ? Center(
                    //     child: _ActionIconBg(
                    //         icon: SvgPicture.asset(
                    //     key: UniqueKey(),
                    //     "assets/svg/ic_copy.svg",
                    //     width: 30,
                    //     height: 30,
                    //     cacheColorFilter: true,
                    //   )))
                    : Center(
                        child: _ActionIconBg(
                        icon: RepaintBoundary(
                          child: ScalableImageWidget(
                            si: si2!,
                            // key: _siWidgetKey,
                            alignment: Alignment.center,
                            scale: double.infinity,
                            background: Colors.white,
                          ),
                        ),
                      ));
              },
              // 40 list items
              childCount: 70,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 1000,
            ),
          )
        ],
      ),
    );
  }
}

class _ActionIconBg extends StatelessWidget {
  final Widget icon;
  final bool loading;
  final VoidCallback? onTap;

  const _ActionIconBg({
    required this.icon,
    this.loading = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.yellow.shade200,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: icon,
      ),
    );
  }
}
//
// class _AssetImage extends StatelessWidget {
//   final String asset;
//   const _AssetImage({Key? key, required this.asset}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.only(top: 10, bottom: 10), width: 100, height: 100, child: SvgPicture.asset(asset));
//   }
// }
