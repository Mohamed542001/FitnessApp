part of 'NewAccStep5WidgetsImports.dart';

class TrainingWithTools extends StatelessWidget {
  const TrainingWithTools({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewAccStep5Cubit(),
      child: BlocConsumer<NewAccStep5Cubit,NewAccStep5States>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: CustomText(
                title: 'التمرين بادوات ؟',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                    value: 'ادوات',
                    groupValue: NewAccStep5Cubit.get(context).radioSelect,
                    onChanged: (val)=>
                        NewAccStep5Cubit.get(context).radioChoice(val),
                ),
                CustomText(
                  title: 'ادوات',
                  size: 16,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'من غير ادوات',
                  groupValue: NewAccStep5Cubit.get(context).radioSelect,
                  onChanged: (val)=>
                      NewAccStep5Cubit.get(context).radioChoice(val),
                ),
                CustomText(
                  title: 'من غير ادوات',
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
