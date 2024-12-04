import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../utils/responsive_helper.dart';
import 'custom_textField.dart';

class ContactForm extends StatefulWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

  ContactForm({super.key});

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  bool checkbox1Value = true;
  bool checkbox2Value = true;

  // مفاتيح الـ TextFormField للتحقق من صحة الحقول
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              AppLocalizations.of(context)!.askDealerQuestion!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
             Text(
              AppLocalizations.of(context)!.messageOptional!,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 10),
             CustomTextField(
              labelText: AppLocalizations.of(context)!.typeYourMessageHere!,
              maxLines: 4,
            ),
            const SizedBox(height: 10),
             Text(
              AppLocalizations.of(context)!.fullName!,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppLocalizations.of(context)!.nameRequired!;
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
             Text(
              AppLocalizations.of(context)!.email!,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppLocalizations.of(context)!.emailRequired!;
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                       Text(
                        AppLocalizations.of(context)!.phone!,
                        style: const TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!.phoneNumberRequired!;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                       Text(
                        AppLocalizations.of(context)!.postcode!,
                        style: const TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!.postcodeRequired!;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: checkbox1Value,
                  onChanged: (value) {
                    setState(() {
                      checkbox1Value = value!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
                 Expanded(
                  child: Text(AppLocalizations.of(context)!.weAreListening!),
                ),
                const Icon(Icons.info_outline, color: Colors.grey),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox2Value,
                  onChanged: (value) {
                    setState(() {
                      checkbox2Value = value!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
                 Expanded(
                  child: Text(AppLocalizations.of(context)!.fillFormNextTime!),
                ),
                const Icon(Icons.info_outline, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.byProceedingAgreeTerms!,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 5),
            Text(
              AppLocalizations.of(context)!.seePersonalInfoStatement!,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // تنفيذ الاجراء عند التحقق بنجاح من الحقول
                    // يمكنك وضع الكود الذي تريد تنفيذه هنا
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child:  Text(
                  AppLocalizations.of(context)!.contactSeller!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 400) {
                  // إذا كان العرض أقل من 600، نستخدم عمود
                  return  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(AppLocalizations.of(context)!.callDealer!),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(
                            "(07) 3330 1942",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(width: 5),
                           Icon(Icons.info_outline, color: Colors.grey),
                        ],
                      ),
                        Text(AppLocalizations.of(context)!.carCode1134!),
                    ],
                  );
                } else {
                  // خلاف ذلك، نستخدم صف
                  return  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(AppLocalizations.of(context)!.callDealer!),
                      const Row(
                        children: [
                           Text(
                            "(07) 3330 1942",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(width: 5),
                           Icon(Icons.info_outline, color: Colors.grey),
                        ],
                      ),
                       Text(AppLocalizations.of(context)!.carCode1134!),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
