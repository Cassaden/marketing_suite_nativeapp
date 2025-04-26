import 'package:flutter/material.dart';

class AppSidebarItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final int index;
  final int selectedIndex;

  final Function onDestinationSelected;

  const AppSidebarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selectedIndex,
    required this.index,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FilledButton.tonalIcon(
        onPressed: () => onDestinationSelected(index),
        icon: icon,
        iconAlignment: IconAlignment.start,
        label: Text(label, textAlign: TextAlign.start),
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          elevation: const WidgetStatePropertyAll(0),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.focused) ||
                states.contains(WidgetState.hovered) ||
                index == selectedIndex) {
              return Theme.of(context).colorScheme.secondaryContainer;
            }
            return Colors.transparent;
          }),
          surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
          shadowColor: const WidgetStatePropertyAll(Colors.transparent),
          foregroundColor: WidgetStatePropertyAll<Color>(
            Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          overlayColor: WidgetStatePropertyAll<Color>(
            Theme.of(
              context,
            ).colorScheme.secondaryContainer.withValues(alpha: 0.12),
          ),
        ),
      ),
    );
  }
}
