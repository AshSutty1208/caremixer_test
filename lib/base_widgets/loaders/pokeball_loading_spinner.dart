import 'package:caremixer_test/app_theme/app_theme.dart' show AppTheme;
import 'package:flutter/material.dart';
import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class PokeballLoadingSpinner extends BaseConsumerWidget {
  const PokeballLoadingSpinner({super.key, this.text = 'Loading...'});

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref, AppTheme appTheme) {
    return Column(
      spacing: 8,
      children: [
        Lottie.asset('assets/pokeball.json', width: 24, height: 24),
        Text(text, style: appTheme.textStyles.label1),
      ],
    );
  }
}
