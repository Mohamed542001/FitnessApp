part of 'NewAccStep5WidgetsImports.dart';

class DaysDropDownButton extends StatelessWidget {
  const DaysDropDownButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewAccStep5Cubit(),
      child: BlocConsumer<NewAccStep5Cubit,NewAccStep5States>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: AppColors.formColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconDisabledColor: AppColors.primary,
                  iconEnabledColor: AppColors.primary,
                  iconSize: 40,
                  isExpanded: true,
                  hint: CustomText(
                    title: 'عدد أيام التمرين',
                    size: 15,
                  ),
                  items: [3,4,5,6].map((e) =>
                      DropdownMenuItem(
                        child: CustomText(title:'$e'),
                        value: e,
                      )).toList(),
                  value: NewAccStep5Cubit.get(context).selectedDay,
                  onChanged: (val)=>NewAccStep5Cubit.get(context).isSelected(val),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
