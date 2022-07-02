part of 'MealDetailsWidgetsImports.dart';

class BuildMealSliverAppBar extends StatelessWidget {
  const BuildMealSliverAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: CircleAvatar(
        radius: 5,
        backgroundColor: AppColors.primary,
        child: IconButton(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.white,
          ),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
      ),
      floating: false,
      pinned: false,
      expandedHeight: 180,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          Res.meal5,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
