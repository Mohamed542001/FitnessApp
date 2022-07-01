part of 'NewAccWidgetsImports.dart';

class NewAccForm extends StatelessWidget {
  const NewAccForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputFormField(
          hint: 'الاسم',
        ),
        SizedBox(
          height: 20,
        ),
        BlocProvider(
          create: (context) => NewAccCubit(),
          child: BlocConsumer<NewAccCubit, NewAccStates>(
            listener: (context, state) {},
            builder: (context, state) => Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.formColor,
                      border: Border.all(
                          color: AppColors.formTextColor
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      iconDisabledColor: AppColors.primary,
                      iconEnabledColor: AppColors.primary,
                      iconSize: 40,
                      isExpanded: true,
                      hint: CustomText(
                        title: 'النوع',
                        color: AppColors.formTextColor,
                        size: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      items: ['ذكر', 'أنثي']
                          .map((e) => DropdownMenuItem(
                                child: CustomText(title: '$e'),
                                value: e,
                              ))
                          .toList(),
                      value: NewAccCubit.get(context).selectedGender,
                      onChanged: (val) =>
                          NewAccCubit.get(context).isSelected(val),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InputFormField(
          hint: 'البريد الالكتروني',
        ),
        SizedBox(
          height: 20,
        ),
        InputFormField(
          hint: 'كلمة المرور',
          secure: true,
        ),
        SizedBox(
          height: 20,
        ),
        InputFormField(
          hint: 'تأكيد كلمة المرور',
          secure: true,
        )
      ],
    );
  }
}
