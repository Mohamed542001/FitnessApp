part of 'NewAccWidgetsImports.dart';

class HaveAccText extends StatelessWidget {
  const HaveAccText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          title: 'او',
          size: 14,
          color: AppColors.formTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_)=>Login()),
            );
          },
          child: CustomText(
            title: 'تسجيل دخول',
            size: 14,
            color: AppColors.formTextColor,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
