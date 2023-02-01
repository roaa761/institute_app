import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
    leading: Icon(
      Icons.person,
      color:Colors.green,
    ),
    title: 'Account',
    subtitle: 'Privacy,Security',
    child:SettingsScreen(
      children: [
        buildPrivacy(context),
         buildSecurity(context),
        buildAccountInfo(context),

  ],
      ),
  );
  Widget buildPrivacy(BuildContext context) => SimpleSettingsTile(
    title: 'Privacy',
    leading: Icon(Icons.lock, color:Colors.blue,),
    onTap: (){},
  );
  Widget buildSecurity(BuildContext context) => SimpleSettingsTile(
    title: 'Security',
    leading: Icon(Icons.security, color:Colors.red,),
    onTap: () {},
  );
  Widget buildAccountInfo(BuildContext context) => SimpleSettingsTile(
    title: 'Security',
    leading: Icon(Icons.text_snippet, color:Colors.purple,),
    onTap: () {},
  );

}
