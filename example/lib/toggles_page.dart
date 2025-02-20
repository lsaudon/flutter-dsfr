import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class TogglesPage extends StatefulWidget {
  const TogglesPage({super.key});

  static final model = PageItem(
    title: 'Interrupteur',
    pageBuilder: (final context) => const TogglesPage(),
  );

  @override
  State<TogglesPage> createState() => _TogglesPageState();
}

class _TogglesPageState extends State<TogglesPage> {
  bool _toggleLeft = false;
  bool _toggleRight = false;

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DsfrToggleSwitch(
            label: 'Vos favoris',
            labelLocation: DsfrToggleLabelLocation.left,
            value: _toggleLeft,
            onChanged: (final value) {
              setState(() {
                _toggleLeft = value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Vos favoris',
            labelLocation: DsfrToggleLabelLocation.left,
            value: !_toggleRight,
            onChanged: (final value) {
              setState(() {
                _toggleRight = !value;
              });
            },
          ),
          DsfrToggleSwitch(
            label: 'Vos favoris',
            enabled: false,
            value: false,
          ),
          DsfrToggleSwitch(
            label: 'Vos favoris',
            enabled: false,
            value: true,
          ),
        ],
      ),
    );
  }
}
