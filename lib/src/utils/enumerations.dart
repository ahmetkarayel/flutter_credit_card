import 'package:flutter_credit_card/src/utils/asset_paths.dart';

enum CardType {
  otherBrand,
  mastercard,
  visa,
  rupay,
  americanExpress,
  unionpay,
  discover,
  elo,
  hipercard,
  mir,
  troy,
}
/// Extension on CardType to provide asset paths for card type icons
extension CardTypeExtension on CardType {
  /// Returns true if the card type is a known brand
  bool get isKnownBrand => this != CardType.otherBrand;

  /// Returns the asset path for the card type icon
  String get assetPath {
    switch (this) {
      case CardType.visa:
        return AssetPaths.visa;
      case CardType.rupay:
        return AssetPaths.rupay;
      case CardType.americanExpress:
        return AssetPaths.americanExpress;
      case CardType.mastercard:
        return AssetPaths.mastercard;
      case CardType.unionpay:
        return AssetPaths.unionpay;
      case CardType.discover:
        return AssetPaths.discover;
      case CardType.elo:
        return AssetPaths.elo;
      case CardType.hipercard:
        return AssetPaths.hipercard;
      case CardType.mir:
        return AssetPaths.mir;
      case CardType.troy:
        return AssetPaths.troy;
      case CardType.otherBrand:
      default:
        return '';
    }
  }
}


/// The type of floating event.
enum FloatingType {
  pointer,
  gyroscope;

  bool get isPointer => this == pointer;

  bool get isGyroscope => this == gyroscope;
}
