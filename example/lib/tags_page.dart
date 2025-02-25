import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';

class TagsPage extends StatelessWidget {
  const TagsPage({super.key});

  static final model = PageItem(
    title: 'Tags',
    pageBuilder: (final context) => const TagsPage(),
  );

  @override
  Widget build(final context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              'Taille SM',
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Libellé tag'),
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Libellé tag'),
              icon: DsfrIcons.systemArrowRightLine,
            ),
            DsfrTag.sm(
              label: TextSpan(text: 'Libellé tag personnalisé'),
              backgroundColor: DsfrColors.greenMenthe925,
              textColor: DsfrColors.greenMentheSun373,
              icon: DsfrIcons.systemArrowRightLine,
            ),
            Text(
              'Taille MD',
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Libellé tag'),
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Libellé tag'),
              icon: DsfrIcons.systemArrowRightLine,
            ),
            DsfrTag.md(
              label: TextSpan(text: 'Libellé tag personnalisé'),
              backgroundColor: DsfrColors.greenMenthe925,
              textColor: DsfrColors.greenMentheSun373,
              icon: DsfrIcons.systemArrowRightLine,
            ),
          ],
        ),
      );
}
