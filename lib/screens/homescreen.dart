import 'package:ecommerce_bag_ui/model/Categorymodel.dart';
import 'package:ecommerce_bag_ui/screens/categorygrid.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
final List<Category> categories = [
    Category(name: 'Bag & Luggage', imageUrl: 'https://tse4.mm.bing.net/th?id=OIP.2362_S-TY9neKHPqk4Am8QHaHa&pid=Api&P=0&h=180', slug: 'category1'),
    Category(name: 'Beauty & Body Care', imageUrl: 'https://tse4.mm.bing.net/th?id=OIP.YDS5T9Adx4kiBswQ98oFuAHaGs&pid=Api&P=0&h=180', slug: 'category2'),
    Category(name: 'Books,Stationary', imageUrl: 'https://tse3.mm.bing.net/th?id=OIP.h1t-m8AH-9KSwHCslzXvagHaFj&pid=Api&P=0&h=180', slug: 'category3'),
    Category(name: 'Hardwares', imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.Jltl5Mu9adB9-8wlVxpIeAHaER&pid=Api&P=0&h=180', slug: 'category1'),
    Category(name: 'Kitchen Essentials', imageUrl: 'https://tse3.mm.bing.net/th?id=OIP.V_L1BzZsrm_pJZKq9CpDsQHaFz&pid=Api&P=0&h=180', slug: 'category2'),
    Category(name: 'Bathroom', imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.FCgfiH8OWp6HKcNTsG69zwHaLI&pid=Api&P=0&h=180', slug: 'category3'),

  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    double customFontSize = 14.0;
    double width = 50.0;
    double height = 50.0;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 25),
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/ic_app_icon.png",
          width: 80,
          height: 40,
        ),
        actions: [
          Icon(Icons.person_2_outlined, size: 35),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                prefixIcon: Icon(Icons.search),
                fillColor: Color(0xFFF2F4F5),
                hintStyle: TextStyle(color: Colors.grey[600]),
                hintText: "What would you like to buy?",
              ),
              autofocus: false,
            ),
          ),
          CarouselSlider(
            items: [
              Image.asset(
                "assets/images/promotion__one.png",
                height: 150,
                width: double.infinity,
              ),
              // Add more Image.asset widgets if needed
            ],
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildCategoryItem(Icons.account_balance, "Popular", customFontSize, width, height, Colors.blue),
              _buildCategoryItem(Icons.access_time, "Flash Sell", customFontSize, width, height, Colors.red),
              _buildCategoryItem(Icons.local_shipping, "Evaly Store", customFontSize, width, height, Colors.green),
              _buildCategoryItem(Icons.card_giftcard, "Voucher", customFontSize, width, height, Colors.orange),
            ],
          ),
          SizedBox(height: 20), // Add spacing between Row and TabBar
          Expanded(
            child: Column(
              children: [
                PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Categories'),
                      Tab(text: 'Brands'),
                      Tab(text: 'Shops'),
                    ],
                  ),
                ),
            SizedBox(height: 5,),
                 Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        color: Colors.white24,
                        child: _selectedIndex == 0
                            ? GridView.count(
                                crossAxisCount: 3,
                                padding: EdgeInsets.all(1.0),
                                childAspectRatio: 8.0 / 9.0,
                                children: List<Widget>.generate(categories.length, (index) {
                                  return GridTile(
                                    child: GridTilesCategory(
                                      name: categories[index].name,
                                      imageUrl: categories[index].imageUrl,
                                      slug: categories[index].slug,
                                    
                                    ),
                                  );
                                }),
                              ):SizedBox(),
                            
                      ),
                      // Other TabBarView children...
                    ],
                  ),
                ),
              ],
            ),
          ),
          
           Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.red : Colors.grey[800]),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite, color: _selectedIndex == 1 ? Colors.red : Colors.grey[800]),
                      label: 'Wish List',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart, color: _selectedIndex == 2 ? Colors.red : Colors.grey[800]),
                      label: 'Cart',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard, color: _selectedIndex == 3 ? Colors.red : Colors.grey[800]),
                      label: 'Dashboard',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.red,
                  onTap: _onItemTapped,
                ),
              ],
            ),
        
        ],
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label, double fontSize, double width, double height, Color iconColor) {
    return Column(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF2F3F7),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF969696),
            fontFamily: 'Roboto-Light.ttf',
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
