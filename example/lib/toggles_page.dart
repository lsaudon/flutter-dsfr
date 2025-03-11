import 'package:flutter_dsfr/atoms/dsfr_form_state.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

import 'mise_en_page/page_section.dart';
import 'mise_en_page/page_sub_section.dart';

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
      child: Padding(
        padding: const EdgeInsets.only(bottom: 88),
        child: Column(
          spacing: 38,
          children: [
            PageSection(
              title: 'Etats',
              children: [
                PageSubSection(
                  title: 'Label à gauche',
                  children: [
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrToggleLabelLocation.left,
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrToggleLabelLocation.left,
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrToggleLabelLocation.left,
                      enabled: false,
                      value: false,
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrToggleLabelLocation.left,
                      enabled: false,
                      value: true,
                    ),
                  ],
                ),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      enabled: false,
                      value: false,
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      enabled: false,
                      value: true,
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: 'Avec description',
              children: [
                PageSubSection(title: 'Label à gauche', children: [
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrToggleLabelLocation.left,
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrToggleLabelLocation.left,
                    value: !_toggleRight,
                    onChanged: (final value) {
                      setState(() {
                        _toggleRight = !value;
                      });
                    },
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrToggleLabelLocation.left,
                    enabled: false,
                    value: false,
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrToggleLabelLocation.left,
                    enabled: false,
                    value: true,
                  ),
                ]),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      enabled: false,
                      value: false,
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      enabled: false,
                      value: true,
                    ),
                  ],
                )
              ],
            ),
            PageSection(
              title: 'Avec statut',
              children: [
                PageSubSection(title: 'Label à gauche', children: [
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: _toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrToggleLabelLocation.left,
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: !_toggleRight ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrToggleLabelLocation.left,
                    value: !_toggleRight,
                    onChanged: (final value) {
                      setState(() {
                        _toggleRight = !value;
                      });
                    },
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: 'Désactivé',
                    labelLocation: DsfrToggleLabelLocation.left,
                    enabled: false,
                    value: false,
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: 'Désactivé',
                    labelLocation: DsfrToggleLabelLocation.left,
                    enabled: false,
                    value: true,
                  ),
                  DsfrToggleSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    status: _toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrToggleLabelLocation.left,
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                ]),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: !_toggleRight ? 'Activé' : 'Désactivé',
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: 'Désactivé',
                      enabled: false,
                      value: false,
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: 'Désactivé',
                      enabled: false,
                      value: true,
                    ),
                    DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            PageSection(
              title: 'Avec state',
              children: [
                PageSubSection(title: 'Label à gauche', children: [
                  DsfrFormState(
                    composantState: DsfrComposantState.error(errorMessage: "Texte d'erreur obligatoire"),
                    child: DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrToggleLabelLocation.left,
                      composantState: DsfrComposantStateEnum.error,
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                  ),
                  DsfrFormState(
                    composantState: DsfrComposantState.error(errorMessage: "Texte d'erreur obligatoire"),
                    child: DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: !_toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrToggleLabelLocation.left,
                      composantState: DsfrComposantStateEnum.error,
                      value: !_toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = !value;
                        });
                      },
                    ),
                  ),
                  DsfrFormState(
                    composantState: DsfrComposantState.success(message: "Texte de validation optionnel"),
                    child: DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrToggleLabelLocation.left,
                      composantState: DsfrComposantStateEnum.success,
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                  ),
                  DsfrFormState(
                    composantState: DsfrComposantState.success(message: "Texte de validation optionnel"),
                    child: DsfrToggleSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: !_toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrToggleLabelLocation.left,
                      composantState: DsfrComposantStateEnum.success,
                      value: !_toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = !value;
                        });
                      },
                    ),
                  ),
                ]),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrFormState(
                      composantState: DsfrComposantState.error(errorMessage: "Texte d'erreur obligatoire"),
                      child: DsfrToggleSwitch(
                        label: 'Libellé de l\'interrupteur',
                        description: 'Texte de description additionnel',
                        status: _toggleLeft ? 'Activé' : 'Désactivé',
                        labelLocation: DsfrToggleLabelLocation.right,
                        composantState: DsfrComposantStateEnum.error,
                        value: _toggleLeft,
                        onChanged: (final value) {
                          setState(() {
                            _toggleLeft = value;
                          });
                        },
                      ),
                    ),
                    DsfrFormState(
                      composantState: DsfrComposantState.error(errorMessage: "Texte d'erreur obligatoire"),
                      child: DsfrToggleSwitch(
                        label: 'Libellé de l\'interrupteur',
                        description: 'Texte de description additionnel',
                        status: !_toggleLeft ? 'Activé' : 'Désactivé',
                        labelLocation: DsfrToggleLabelLocation.right,
                        composantState: DsfrComposantStateEnum.error,
                        value: !_toggleLeft,
                        onChanged: (final value) {
                          setState(() {
                            _toggleLeft = !value;
                          });
                        },
                      ),
                    ),
                    DsfrFormState(
                      composantState: DsfrComposantState.success(message: "Texte de validation optionnel"),
                      child: DsfrToggleSwitch(
                        label: 'Libellé de l\'interrupteur',
                        description: 'Texte de description additionnel',
                        status: _toggleLeft ? 'Activé' : 'Désactivé',
                        labelLocation: DsfrToggleLabelLocation.right,
                        composantState: DsfrComposantStateEnum.success,
                        value: _toggleLeft,
                        onChanged: (final value) {
                          setState(() {
                            _toggleLeft = value;
                          });
                        },
                      ),
                    ),
                    DsfrFormState(
                      composantState: DsfrComposantState.success(message: "Texte de validation optionnel"),
                      child: DsfrToggleSwitch(
                        label: 'Libellé de l\'interrupteur',
                        description: 'Texte de description additionnel',
                        status: !_toggleLeft ? 'Activé' : 'Désactivé',
                        labelLocation: DsfrToggleLabelLocation.right,
                        composantState: DsfrComposantStateEnum.success,
                        value: !_toggleLeft,
                        onChanged: (final value) {
                          setState(() {
                            _toggleLeft = !value;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
