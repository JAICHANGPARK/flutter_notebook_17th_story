import 'package:freezed_annotation/freezed_annotation.dart';

part 'furniture_cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  factory CartItem({String? img, String? title, int? price, String? color}) = _CartItem;
}
