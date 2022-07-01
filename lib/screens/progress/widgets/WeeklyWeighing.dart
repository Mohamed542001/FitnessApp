part of 'ProgressWidgetsImports.dart';

class WeeklyWeighing extends StatelessWidget {
  const WeeklyWeighing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          CustomText(
            title: 'قياس الوزن الاسبوعي',
            color: AppColors.black,
            size: 14,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10  ),
            width: 200,
            child: InputFormField(
              controller: ProgressData().weight,
            ),
          ),
        ],
      ),
    );
  }
}
