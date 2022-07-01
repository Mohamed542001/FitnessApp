part of 'SettingWidgetsImports.dart';

class PersonalInfoChangePass extends StatelessWidget {
  const PersonalInfoChangePass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        showModalBottomSheet(
          context: (context),
          builder: (context)=>Container(
            height: 320,
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: 'تغيير كلمة المرور',
                      size: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputFormField(
                      hasLabel: true,
                      hint: 'كلمة المرور الحالية',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InputFormField(
                      hasLabel: true,
                      hint: 'كلمة المرور الجديدة',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InputFormField(
                      hasLabel: true,
                      hint: 'تأكيد كلمة المرور الحالية',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DefaultButton(
                        title: 'حفظ التغيرات',
                        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                        onTap: (){},
                        elev: 10,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: DefaultButton(
                        title: 'الغاء',
                        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                        color: AppColors.white,
                        textColor: AppColors.primary,
                        elev: 10,
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      child: CustomText(
        title: 'تغيير كلمة المرور',
        size: 16,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        color: AppColors.primary,
      ),
    );
  }
}
