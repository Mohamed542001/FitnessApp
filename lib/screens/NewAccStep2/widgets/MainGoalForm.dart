part of 'NewAccStep2WidgetsImports.dart';

class MainGoalForm extends StatefulWidget {
  const MainGoalForm({Key key}) : super(key: key);

  static UserType user;

  @override
  _MainGoalFormState createState() => _MainGoalFormState();
}

class _MainGoalFormState extends State<MainGoalForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'ما هو هدفك الأساسي من النظام؟',
              size: 14,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomRadioTile(
              value: UserType.first,
              text: 'خسارة الوزن',
              image: Res.icon4,
              groupValue: MainGoalForm.user,
              onChange: (val){
                setState(() {
                  MainGoalForm.user=val;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomRadioTile(
              value: UserType.second,
              text: 'ضبط شكل الجسم',
              image: Res.icon5,
              groupValue: MainGoalForm.user,
              onChange: (val){
                setState(() {
                  MainGoalForm.user=val;
                });
              },
            ),

            SizedBox(
              height: 10,
            ),
            CustomRadioTile(
              value: UserType.third,
              text: 'اللياقة بشكل عام',
              image: Res.icon6,
              groupValue: MainGoalForm.user,
              onChange: (val){
                setState(() {
                  MainGoalForm.user=val;
                });
              },
            ),
          ],


    );
  }
}
