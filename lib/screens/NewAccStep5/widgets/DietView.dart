part of 'NewAccStep5WidgetsImports.dart';

class DietView extends StatelessWidget {
  const DietView({Key key}) : super(key: key);

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
                title: 'النظام الغذائي',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'عادي',
                  groupValue: NewAccStep5Cubit.get(context).radioSelect1,
                  onChanged: (val)=>
                      NewAccStep5Cubit.get(context).radioChoice1(val),
                ),
                CustomText(
                  title: 'عادي',
                  size: 16,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'نباتي',
                  groupValue: NewAccStep5Cubit.get(context).radioSelect1,
                  onChanged: (val)=>
                      NewAccStep5Cubit.get(context).radioChoice1(val),
                ),
                CustomText(
                  title: 'نباتي',
                  size: 16,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'فيجين',
                  groupValue: NewAccStep5Cubit.get(context).radioSelect1,
                  onChanged: (val)=>
                      NewAccStep5Cubit.get(context).radioChoice1(val),
                ),
                CustomText(
                  title: 'فيجين',
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
