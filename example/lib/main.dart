import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:example/accordions_page.dart';
import 'package:example/buttons_page.dart';
import 'package:example/checkbox_page.dart';
import 'package:example/colors_page.dart';
import 'package:example/form_messages_page.dart';
import 'package:example/icons_page.dart';
import 'package:example/inputs_page.dart';
import 'package:example/links_page.dart';
import 'package:example/master_page.dart';
import 'package:example/modals_page.dart';
import 'package:example/radios_page.dart';
import 'package:example/sandbox_page.dart';
import 'package:example/select_page.dart';
import 'package:example/tags_page.dart';
import 'package:example/text_page.dart';
import 'package:example/toggles_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final context) => MaterialApp(
        home: MasterPage(
          pageItems: [
            SandboxPage.model,
            TextPage.model,
            AccordionsPage.model,
            ButtonsPage.model,
            CheckboxPage.model,
            ColorsPage.model,
            SelectPage.model,
            FormMessagesPage.model,
            IconsPage.model,
            InputsPage.model,
            LinksPage.model,
            ModalsPage.model,
            RadiosPage.model,
            TagsPage.model,
            TogglesPage.model,
          ],
        ),
        builder: (final context, final child) =>
            AccessibilityTools(child: child),
        debugShowCheckedModeBanner: false,
      );
}
