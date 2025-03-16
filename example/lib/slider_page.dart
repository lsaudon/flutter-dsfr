import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/composants/slider.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  static final model = PageItem(
    title: 'Curseur',
    pageBuilder: (final context) => const SliderPage(),
  );

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0.5;

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 98),
        child: Column(
          spacing: 32,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DsfrSlider.sm(
              label: "Curseur SM",
              value: _value,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.md(
              label: "Curseur MD",
              value: _value,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.sm(
              label: "Curseur SM - description",
              description: "Texte de description additionnel",
              value: _value,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.md(
              label: "Curseur MD - description",
              description: "Texte de description additionnel",
              value: _value,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.sm(
              label: "Curseur SM - valeurs min et max",
              value: _value,
              showMinMaxLabels: true,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.md(
              label: "Curseur MD - valeurs min et max",
              value: _value,
              showMinMaxLabels: true,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.sm(
              label: "Curseur SM - désactivé",
              enabled: false,
              value: 0.25,
            ),
            DsfrSlider.md(
              label: "Curseur MD - désactivé",
              enabled: false,
              value: 0.35,
            ),
            DsfrSlider.sm(
              label: "Curseur SM - désactivé avec description",
              description: "Texte de description additionnel, valeur de 0 à 100",
              showMinMaxLabels: true,
              enabled: false,
              value: 0.77,
            ),
            DsfrSlider.md(
              label: "Curseur MD - désactivé avec description",
              description: "Texte de description additionnel, valeur de 0 à 100",
              showMinMaxLabels: true,
              enabled: false,
              value: 0.88,
            ),
            DsfrSlider.sm(
              label: "Curseur SM - piste crantée",
              value: _value,
              division: 5,
              showMinMaxLabels: true,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.md(
              label: "Curseur MD - piste crantée",
              value: _value,
              division: 5,
              showMinMaxLabels: true,
              onChanged: (final newValue) {
                setState(() => _value = newValue);
              },
            ),
            DsfrSlider.sm(
              label: "Curseur SM - désactivé piste crantée",
              enabled: false,
              value: 0.25,
              division: 5,
            ),
            DsfrSlider.md(
              label: "Curseur MD - désactivé piste crantée",
              enabled: false,
              value: 0.35,
              division: 5,
            ),
            DsfrFormState(
              composantState: DsfrComposantState.success(message: "Texte validation optionnel"),
              child: DsfrSlider.sm(
                label: "Curseur SM - Succès",
                value: _value,
                composantState: DsfrComposantStateEnum.success,
                onChanged: (final newValue) {
                  setState(() => _value = newValue);
                },
              ),
            ),
            DsfrFormState(
              composantState: DsfrComposantState.success(message: "Texte validation optionnel"),
              child: DsfrSlider.md(
                label: "Curseur MD - Succès",
                value: _value,
                composantState: DsfrComposantStateEnum.success,
                onChanged: (final newValue) {
                  setState(() => _value = newValue);
                },
              ),
            ),
            DsfrFormState(
              composantState: DsfrComposantState.error(errorMessage: "Texte d'erreur obligatoire"),
              child: DsfrSlider.sm(
                label: "Curseur SM - Erreur",
                value: _value,
                composantState: DsfrComposantStateEnum.error,
                onChanged: (final newValue) {
                  setState(() => _value = newValue);
                },
              ),
            ),
            DsfrFormState(
              composantState: DsfrComposantState.error(errorMessage: "Texte d'erreur obligatoire"),
              child: DsfrSlider.md(
                label: "Curseur MD - Erreur",
                value: _value,
                composantState: DsfrComposantStateEnum.error,
                onChanged: (final newValue) {
                  setState(() => _value = newValue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
