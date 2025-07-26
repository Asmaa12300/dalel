import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../custome_historical_periods/period_details_widget.dart';

class HistoricalPeriodsSection extends StatelessWidget {
   HistoricalPeriodsSection({super.key});
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('historical_periods').get(),
      builder: (context,snapshot) {if (snapshot.hasError) {
        return Text("Something went wrong");
      }

      if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
        return Text("Document does not exist");
      }

      if (snapshot.connectionState == ConnectionState.done) {
        return SizedBox(height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context,index){
              return SizedBox(width: 10,);
            },
            itemCount:snapshot.data!.size ,
            itemBuilder: (context,index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeader(text: AppStrings.historicalPeriods),
                SizedBox(height: 18),
                PeriodDetailsWidget(text:snapshot.data!.docs[0]['name'] , image:snapshot.data!.docs[0]['image'],),
                SizedBox(height: 32),

              ],
            );
          },
        ));
       /* Map<String, dynamic> data = snapshot.data!.docs[0].data() as Map<String, dynamic>;
        return Text( data['name']);*/
      }

      return Text("loading");
        /*return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(text: AppStrings.historicalPeriods),
            Text(snapshot.data!.docs[0]['name']),
            SizedBox(height: 18),
            HistoricalPeriods(),
            SizedBox(height: 32),

          ],
        );*/
      }
    );
  }
}
