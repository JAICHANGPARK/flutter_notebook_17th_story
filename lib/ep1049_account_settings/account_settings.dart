import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1049_account_settings/src/ui/account_setting_page.dart';


class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountSettingPage(),
    );
  }
}
