part of 'ConstantsImports.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title:'Fitness',
          size: 35,
          color: AppColors.primary,
          fontWeight: FontWeight.w900,
        ),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          Res.fitIcon,
          width: 26,
          height: 35.22,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
