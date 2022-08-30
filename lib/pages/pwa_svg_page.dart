import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rx_dart_learning/gen/assets.gen.dart';

class PwaSvgPage extends StatelessWidget {
  const PwaSvgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView(
      //   children: [
      //     const _AssetImage(
      //       asset: 'assets/svg/ic_share.svg',
      //     ),
      //     const _AssetImage(
      //       asset: 'assets/svg/ic_copy.svg',
      //     ),
      //     const _AssetImage(
      //       asset: 'assets/svg/ic_clubtalk.svg',
      //     ),
      //     const _AssetImage(
      //       asset: 'assets/svg/ic_my_bets.svg',
      //     ),
      //     const _AssetImage(
      //       asset: 'assets/svg/ic_retain.svg',
      //     ),
      //
      //   ],
      // ),

      //   body: ListView.builder(
      //     itemBuilder: (c, i) {
      //       return i % 2 == 0
      //           ? const _AssetImage(
      //               asset: 'assets/svg/ic_copy.svg',
      //             )
      //           : const _AssetImage(
      //               asset: 'assets/svg/ic_retain.svg',
      //             );
      //     },
      //     itemCount: 1000,
      //     shrinkWrap: true,
      //   ),
      // );

      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return index % 2 == 0
                    ? Center(child: _ActionIconBg(icon: Assets.svg.icCopy.svg(width: 30, height: 30)))
                    : Center(child: _ActionIconBg(icon: Assets.svg.icTime.svg(width: 30, height: 30)));
              },
              // 40 list items
              childCount: 100,
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
          color: Colors.green.shade100,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: icon,
      ),
    );
  }
}

class _AssetImage extends StatelessWidget {
  final String asset;
  const _AssetImage({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10), width: 100, height: 100, child: SvgPicture.asset(asset));
  }
}
