import 'package:flutter/material.dart';
import '../../../core/widgets/custom_textField.dart';
import '../../../core/Theming/font_weights_helper.dart';
import '../../../l10n/app_localizations.dart';

class FormFieldsWidget extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const FormFieldsWidget({
    required this.nameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildField(
          context: context,
          label: AppLocalizations.of(context)!.name!,
          controller: nameController,
          hintText: AppLocalizations.of(context)!.enterYourName!,
          keyboardType: TextInputType.name,
          validatorMessage: AppLocalizations.of(context)!.pleaseEnterYourName!,
        ),
        const SizedBox(height: 20),
        _buildField(
          context: context,
          label: AppLocalizations.of(context)!.phone!,
          controller: phoneController,
          hintText: AppLocalizations.of(context)!.enterYourPhone!,
          keyboardType: TextInputType.phone,
          validatorMessage: AppLocalizations.of(context)!.pleaseEnterYourPhone!,
        ),
        const SizedBox(height: 20),
        _buildField(
          context: context,
          label: AppLocalizations.of(context)!.email!,
          controller: emailController,
          hintText: AppLocalizations.of(context)!.enterYourEmail!,
          keyboardType: TextInputType.emailAddress,
          validatorMessage: AppLocalizations.of(context)!.pleaseEnterYourEmail!,
          isEmail: true,
        ),
        const SizedBox(height: 20),
        _buildField(
          context: context,
          label: AppLocalizations.of(context)!.password!,
          controller: passwordController,
          hintText: AppLocalizations.of(context)!.enterYourPassword!,
          keyboardType: TextInputType.text,
          isPassword: true,
          validatorMessage: AppLocalizations.of(context)!.pleaseEnterYourPassword!,
        ),
      ],
    );
  }

  Widget _buildField({
    required BuildContext context,
    required String label,
    required TextEditingController controller,
    required String hintText,
    required TextInputType keyboardType,
    required String validatorMessage,
    bool isPassword = false,
    bool isEmail = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xff4D4D4D),
            fontWeight: FontWeightHelper.semiBold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 10),
        TextFieldUsed(
          controller: controller,
          label: hintText,
          keyboardType: keyboardType,
          obscureText: isPassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return validatorMessage;
            }
            if (isEmail && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return AppLocalizations.of(context)!
                  .pleaseEnterAValidEmailAddress!;
            }
            return null;
          },
        ),
      ],
    );
  }
}
