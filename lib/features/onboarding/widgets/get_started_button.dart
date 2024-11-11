import 'package:doc_doc/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/route/routes.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(ColorManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50.h)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            )),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
