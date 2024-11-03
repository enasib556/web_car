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
            const Text(
              "Ask the dealer a question",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Message (Optional)',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              labelText: "Type your message here",
              maxLines: 4,
            ),
            const SizedBox(height: 10),
            const Text(
              'Full name',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            const Text(
              'Email',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email required';
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
                      const Text(
                        'Phone number',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'PhoneNumber required';
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
                      const Text(
                        'Postcode',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Postcode required';
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
                const Expanded(
                  child: Text("We're listening! Tell us what you think"),
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
                const Expanded(
                  child: Text("Fill in this form for me next time"),
                ),
                const Icon(Icons.info_outline, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "By proceeding, you agree to carsales network's T&Cs and Privacy Policy.",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 5),
            Text(
              "See Personal Information Collection Statement.",
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
                child: const Text(
                  "Contact seller",
                  style: TextStyle(
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
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("Call the dealer"),
                      Row(
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
                       Text("Car code: 1134"),
                    ],
                  );
                } else {
                  // خلاف ذلك، نستخدم صف
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("Call the dealer"),
                      Row(
                        children: [
                           Text(
                            "(07) 3330 1942",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(width: 5),
                           Icon(Icons.info_outline, color: Colors.grey),
                        ],
                      ),
                       Text("Car code: 1134"),
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
