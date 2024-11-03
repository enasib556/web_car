import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final Widget content;
  final VoidCallback onClose; // Define onClose as a VoidCallback

  const CustomAlertDialog({
    super.key,
    required this.content,
    required this.onClose, // Add onClose as a required parameter
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 800,
        // constraints: BoxConstraints(
        //   maxHeight: MediaQuery.of(context).size.height , // أقصى ارتفاع
        //   maxWidth: MediaQuery.of(context).size.width, // أقصى عرض
        // ),
        decoration: BoxDecoration(
          color: Colors.white, // خلفية بيضاء
          borderRadius: BorderRadius.circular(16), // زوايا دائرية
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            // علامة الإغلاق
            Padding(
              padding: const EdgeInsets.all(32),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: onClose, // استدعاء وظيفة الإغلاق عند الضغط
                ),
              ),
            ),
            // محتوى الـ Dialog
            Center(child: content),
          ],
        ),
      ),
    );
  }
}

void showCustomAlertDialog(BuildContext context, Widget content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent, // خلفية شفافة للـ Dialog
        child: CustomAlertDialog(
          content: content,
          onClose: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      );
    },
  );
}
