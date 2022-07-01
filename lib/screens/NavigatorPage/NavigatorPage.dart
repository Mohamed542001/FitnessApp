part of 'NavigatorPageImports.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex=3;
  final List<Widget> _children=[
    Progress(),
    Menu(),
    Setting(),
    Home(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(
                color: AppColors.primary,
                size: 24
            ),
            unselectedIconTheme: IconThemeData(
                color: AppColors.black,
                size: 24
            ),
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index){
              setState(() {
                selectedIndex=index;
                print('$index');
              });
            },
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.arrow_upward),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.wysiwyg),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.settings_outlined),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.home_outlined),
              ),
            ],
          ),
        ),
      ),
      body: _children[selectedIndex],
    );
  }
}