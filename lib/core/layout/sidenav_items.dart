import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/common/screens/under_construction.dart';

import 'package:app/features/home.dart';
import 'package:app/features/campaigns.dart';
import 'package:app/features/contacts/presentation/screens/main.dart';
import 'package:app/features/messaging.dart';

import 'package:app/features/auth/presentation/blocs/login/cubit.dart';

final getItems =
    (BuildContext context) => <NavigationPaneItem>[
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

final getFooterItems =
    (BuildContext context) => <NavigationPaneItem>[
      PaneItem(
        icon: const Icon(FluentIcons.account_management),
        title: const Text('Account'),
        body: const FeatureUnderConstructionScreen('Account'),
      ),
      PaneItem(
        icon: const Icon(FluentIcons.settings),
        title: const Text('Settings'),
        body: const FeatureUnderConstructionScreen('Settings'),
      ),
      PaneItemAction(
        icon: const Icon(FluentIcons.sign_out),
        title: const Text('Sign Out'),
        onTap: () async {
          final shouldLogout = await showDialog<bool>(
            context: context,
            builder:
                (context) => ContentDialog(
                  title: const Text('Sign out?'),
                  content: const Text('Are you sure you want to sign out?'),
                  actions: [
                    Button(
                      child: const Text('Cancel'),
                      onPressed: () => Navigator.pop(context, false),
                    ),
                    FilledButton(
                      child: const Text('Sign Out'),
                      onPressed: () => Navigator.pop(context, true),
                    ),
                  ],
                ),
          );
          if (shouldLogout == true) {
            SchedulerBinding.instance.addPostFrameCallback(
              (_) => context.read<LoginCubit>().logout(),
            );
          }
        },
      ),
    ];
