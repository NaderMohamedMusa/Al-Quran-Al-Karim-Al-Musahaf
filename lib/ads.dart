import 'dart:io';
import 'package:firebase_admob/firebase_admob.dart';

enum AdsType { BANNER_ADS, INTERSTITIAL_ADS }
class CreateAds {
  static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: Platform.isAndroid
            ? 'ca-app-pub-7174305070730030/7057405044'
            : 'ca-app-pub-7174305070730030/3193896244',
        size: AdSize.smartBanner,
        listener: (MobileAdEvent event) {
          print('mobile event : $event');
        });
  }

  InterstitialAd createInterstitialAd() {
    return new InterstitialAd(
        adUnitId: Platform.isAndroid
            ? 'ca-app-pub-7174305070730030/5864291612'
            : 'ca-app-pub-7174305070730030/5416734904',
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Interstitial event : $event");
        });
  }

  addAds(AdsType type) {
    FirebaseAdMob.instance.initialize(
        appId: Platform.isAndroid
            ? 'ca-app-pub-7174305070730030~9611238586'
            : 'ca-app-pub-7174305070730030~8446222926');
    if (type == AdsType.BANNER_ADS) {
      _bannerAd = createBannerAd()
        ..load()
        ..show(
          anchorType: AnchorType.bottom,
        );
    } else if (type == AdsType.INTERSTITIAL_ADS) {
      createInterstitialAd()
        ..load()
        ..show(
          anchorType: AnchorType.bottom,
          anchorOffset: 0.0,
        );
    }
  }

  adsDiposed() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
  }
}
