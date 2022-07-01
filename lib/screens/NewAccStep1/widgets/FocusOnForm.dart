part of 'NewAccStep1WidgetsImports.dart';

class FocusOnForm extends StatefulWidget {
  const FocusOnForm({Key key}) : super(key: key);

  static UserType user;

  @override
  _FocusOnFormState createState() => _FocusOnFormState();
}

class _FocusOnFormState extends State<FocusOnForm> {

  @override
  Widget build(BuildContext context) {

    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'هل تريد التركيز اكثر علي التمارين ام التغذية؟',
              size: 14,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomRadioTile(
              value: UserType.first,
              text: 'التمارين',
              image: Res.icon1,
              groupValue: FocusOnForm.user,
              onChange: (val){
                setState(() {
                  FocusOnForm.user=val;
                });
              },
            ),
            CustomRadioTile(
              value: UserType.second,
              text: 'التغذية',
              image: Res.icon2,
              groupValue: FocusOnForm.user,
              onChange: (val){
                setState(() {
                  FocusOnForm.user=val;
                });
              },
            ),
            CustomRadioTile(
              value: UserType.third,
              text: 'التمارين و التغذية',
              image: Res.icon3,
              groupValue: FocusOnForm.user,
              onChange: (val){
                setState(() {
                  FocusOnForm.user=val;
                });
              },
            ),

          ],


    );
  }
}
