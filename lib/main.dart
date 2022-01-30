import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ep1049_account_settings/account_settings.dart';

void main() {
  runApp(
    const ProviderScope(
      child: AccountSettings(),
    ),
  );
}
