part of 'ProgressWidgetsImports.dart';

class ProgressWeightCard extends StatelessWidget {
  const ProgressWeightCard({Key key, this.text1, this.text2}) : super(key: key);

  final String text1,text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.formTextColor)
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title: text1,
              size: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              title: text2,
              size: 12,
              color: AppColors.primary,
            ),
          ]),
    );
  }
}
