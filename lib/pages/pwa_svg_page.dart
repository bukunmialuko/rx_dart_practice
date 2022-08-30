import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    ? const _AssetImage(
                        asset: 'assets/svg/ic_copy.svg',
                      )
                    : const _AssetImage(
                        asset: 'assets/svg/ic_retain.svg',
                      );
              },
              // 40 list items
              childCount: 1000,
            ),
          ),
        ],
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
