import 'package:fluent_ui/fluent_ui.dart';

import 'package:app/common/screens/under_construction.dart';
import 'package:app/common/screens/executing.dart';

import 'package:app/features/home.dart';
import 'package:app/features/campaigns.dart';
import 'package:app/features/contacts/presentation/screens/main.dart';
import 'package:app/features/messaging.dart';

List<NavigationPaneItem> items = [
  PaneItem(
    icon: const Icon(FluentIcons.home),
    title: const Text('Home'),
    body: const HomeScreen(),
  ),
  PaneItemSeparator(),
  PaneItem(
    icon: const Icon(FluentIcons.campaign_template),
    title: const Text('Campaigns'),
    body: const CampaignsScreen(),
  ),
  PaneItem(
    icon: const Icon(FluentIcons.contact_list),
    title: const Text('Contacts'),
    body: const ContactsScreenManager(),
  ),
  PaneItem(
    icon: const Icon(FluentIcons.message),
    title: const Text('Chats'),
    body: const MessagingScreen(),
  ),
];

List<NavigationPaneItem> footerItems = [
  PaneItemWidgetAdapter(
    child: Builder(
      builder: (context) {
        if (NavigationView.of(context).displayMode == PaneDisplayMode.compact) {
          return const FlutterLogo();
        }
        return Container(
          constraints: const BoxConstraints(maxWidth: 200.0),
          child: const Row(
            children: [
              FlutterLogo(),
              SizedBox(width: 6.0),
              Text('This is a custom widget'),
            ],
          ),
        );
      },
    ),
  ),

  PaneItemExpander(
    icon: const Icon(FluentIcons.account_management),
    title: const Text('Account'),
    body: const FeatureUnderConstructionScreen('Account'),
    items: [
      PaneItem(
        icon: const Icon(FluentIcons.sign_out),
        title: const Text('Sign Out'),
        onTap: () {},
        body: ExecutingScreen('Signing Out'),
      ),
    ],
  ),
  PaneItem(
    icon: const Icon(FluentIcons.settings),
    title: const Text('Settings'),
    body: const FeatureUnderConstructionScreen('Settings'),
  ),
];
