part of 'SettingWidgetsImports.dart';

class PersonalInformation extends StatelessWidget {
  PersonalInformation({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'المعلومات الشخصية',
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: InputFormField(
                controller: SettingData().name,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: InputFormField(
                controller: SettingData().gender,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        InputFormField(
          controller: SettingData().email,
        ),
        PersonalInfoChangePass(),
      ],
    );
  }
}
