part of 'ForgetPasswordWidgetsImports.dart';

class ForgetPasswordPinCode extends StatelessWidget {
  const ForgetPasswordPinCode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: PinCodeTextField(
        appContext: context,
        length: 5,
        onChanged: (value){
          print(value);
        },
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          activeColor: AppColors.greyWhite,
          inactiveColor: Colors.grey,
          selectedColor: AppColors.greyWhite,

          fieldHeight: 57,
          fieldWidth: 51,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(6),


        ),

      ),
    );
  }
}
