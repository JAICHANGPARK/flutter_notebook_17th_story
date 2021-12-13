import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1001_nft_app/nft_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(child: NftApp()));
}