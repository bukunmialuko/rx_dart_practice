import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PwaSvgPage extends StatelessWidget {
  const PwaSvgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          _AssetImage(
            asset: 'assets/svg/ic_share.svg',
          ),
          _AssetImage(
            asset: 'assets/svg/ic_copy.svg',
          ),
          _AssetImage(
            asset: 'assets/svg/ic_clubtalk.svg',
          ),
          _AssetImage(
            asset: 'assets/svg/ic_my_bets.svg',
          ),
          _AssetImage(
            asset: 'assets/svg/ic_retain.svg',
          )
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
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        width: 100,
        height: 100,
        child: SvgPicture.asset(asset, semanticsLabel: 'Acme Logo'));
  }
}
