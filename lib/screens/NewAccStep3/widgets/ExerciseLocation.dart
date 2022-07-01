part of 'NewAccStep3WidgetsImports.dart';

class ExerciseLocation extends StatefulWidget {
  const ExerciseLocation({Key key}) : super(key: key);

  static UserType user;

  @override
  _ExerciseLocationState createState() => _ExerciseLocationState();
}

class _ExerciseLocationState extends State<ExerciseLocation> {
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'مكان التمرين',
              size: 14,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomRadioTile(
              value: UserType.first,
              text: 'البيت',
              image: Res.icon8,
              groupValue: ExerciseLocation.user,
              onChange: (val){
                setState(() {
                  ExerciseLocation.user=val;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomRadioTile(
              value: UserType.second,
              text: 'الجيم',
              image: Res.icon7,
              groupValue: ExerciseLocation.user,
              onChange: (val){
                setState(() {
                  ExerciseLocation.user=val;
                });
              },
            ),
          ],


    );
  }
}
