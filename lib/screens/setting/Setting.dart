part of 'SettingImports.dart';

class Setting extends StatelessWidget {
  const Setting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'الاعدادات',
        elev: 0,
        back: false,
      ),
      body: SingleChildScrollView(
        child:
        Container(
          width: double.infinity,
          color: AppColors.white,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              PersonalInformation(),
              SystemInformation(),

              TrainingDays(),
              SettingButton(),
            ],
          ),
        ),

      ),
    );
  }
}
