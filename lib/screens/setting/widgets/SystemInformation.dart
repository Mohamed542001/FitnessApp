part of 'SettingWidgetsImports.dart';


class SystemInformation extends StatelessWidget {
  const SystemInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'معلومات النظام',
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 15,
        ),
        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30,
            childAspectRatio: 1/0.6,
          ),
          children: [
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[0]['titleName']}',
              controller: SettingData().focusOn,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[1]['titleName']}',
              controller: SettingData().aim,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[2]['titleName']}',
              controller: SettingData().trainingPlace,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[3]['titleName']}',
              controller: SettingData().age,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[4]['titleName']}',
              controller: SettingData().height,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[5]['titleName']}',
              controller: SettingData().weight,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[6]['titleName']}',
              controller: SettingData().reachedWeight,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[7]['titleName']}',
              controller: SettingData().trainingDays,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[8]['titleName']}',
              controller: SettingData().diet,
            ),
            InputFormField(
              verticalMargin: 5,
              upperText: '${UserInformationModel().listInformation[9]['titleName']}',
              controller: SettingData().tools,
            ),
          ],
        ),


      ],
    );
  }
}
