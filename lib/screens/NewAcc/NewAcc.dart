part of 'NewAccImports.dart';


class NewAccount extends StatelessWidget {
  const NewAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginHeader(),
            SizedBox(
              height: 30,
            ),
            NewAccForm(),
            NewAccButton(),
            HaveAccText(),
          ],
        ),
      ),
    );
  }
}