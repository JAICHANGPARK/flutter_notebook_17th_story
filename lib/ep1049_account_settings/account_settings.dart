import 'package:flutter/material.dart';

import 'src/ui/account_setting_home_page.dart';


class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountSettingHomePage(),
    );
  }
}
