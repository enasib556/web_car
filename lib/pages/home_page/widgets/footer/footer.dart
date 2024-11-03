import 'package:cars_web/pages/home_page/widgets/footer/footer_column.dart';
import 'package:flutter/material.dart';

import '../../../../l10n/app_localizations.dart';

class Footer extends StatelessWidget {
   const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 40,
        shrinkWrap: true,
        children: [
          FooterColumn(boldText:AppLocalizations.of(context)!.contactUs!, regularTexts:  [AppLocalizations.of(context)!.contactuslist![0], AppLocalizations.of(context)!.contactuslist![1],],),
          FooterColumn(boldText:  AppLocalizations.of(context)!.company!, regularTexts:  [
            AppLocalizations.of(context)!.companylist![0],
            AppLocalizations.of(context)!.companylist![1],
            AppLocalizations.of(context)!.companylist![2],
            AppLocalizations.of(context)!.companylist![3],
            AppLocalizations.of(context)!.companylist![4],
            AppLocalizations.of(context)!.companylist![5],
            AppLocalizations.of(context)!.companylist![6],
            AppLocalizations.of(context)!.companylist![7],
          ],),
           FooterColumn(boldText: AppLocalizations.of(context)!.localmarkets!, regularTexts:  [
             AppLocalizations.of(context)!.localmarketslist![0],
             AppLocalizations.of(context)!.localmarketslist![1],
             AppLocalizations.of(context)!.localmarketslist![2],
             AppLocalizations.of(context)!.localmarketslist![3],
             AppLocalizations.of(context)!.localmarketslist![4],
             AppLocalizations.of(context)!.localmarketslist![5],
             AppLocalizations.of(context)!.localmarketslist![6],
           ],),
           FooterColumn(boldText: AppLocalizations.of(context)!.consent!, regularTexts: [
             AppLocalizations.of(context)!.consentlist![0],
             AppLocalizations.of(context)!.consentlist![1],
             AppLocalizations.of(context)!.consentlist![2],
           ]),
          
        ],
      ),

    );
  }
}
