import 'package:app_web/views/side_bar_screens/category_screen.dart';
import 'package:app_web/views/side_bar_screens/subcategory_screen.dart';
import 'package:app_web/views/side_bar_screens/upload_banner_screen.dart';
import 'package:app_web/views/side_bar_screens/vendors_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedScreen = const UploadBannerScreen();

  screenSelector(item) {
    switch (item.route) {
      // case BuyersScreen.id:
      //   setState(() {
      //     _selectedScreen = const BuyersScreen();
      //   });

      //   break;

      // case VendorsScreen.id:
      //   setState(() {
      //     _selectedScreen = const VendorsScreen();
      //   });

      //   break;

      // case OrdersScreen.id:
      //   setState(() {
      //     _selectedScreen = OrdersScreen();
      //   });

      //   break;

      case CategoryScreen.id:
        setState(() {
          _selectedScreen = const CategoryScreen();
        });

        break;
      case SubcategoryScreen.id:
        setState(() {
          _selectedScreen = const SubcategoryScreen();
        });
      case UploadBannerScreen.id:
        setState(() {
          _selectedScreen = const UploadBannerScreen();
        });

        break;

      // case ProductScreen.id:
      //   setState(() {
      //     _selectedScreen = ProductScreen();
      //   });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Management",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 4,
          ),
        ),
      ),
      body: _selectedScreen,
      sideBar: SideBar(
        header: Container(
          height: 50,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: const Center(
            child: Text(
              'Multi Vendor Admin',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.7,
                color: Colors.white,
              ),
            ),
          ),
        ),
        items: const [
          // AdminMenuItem(
          //   title: 'Vendors',
          //   route: VendorsScreen.id,
          //   icon: CupertinoIcons.person_3,
          // ),
          // AdminMenuItem(
          //   title: 'Buyers',
          //   route: BuyersScreen.id,
          //   icon: CupertinoIcons.person,
          // ),
          // AdminMenuItem(
          //   title: 'Orders',
          //   route: OrdersScreen.id,
          //   icon: CupertinoIcons.shopping_cart,
          // ),
          AdminMenuItem(
            title: 'Categories',
            route: CategoryScreen.id,
            icon: Icons.category,
          ),
          AdminMenuItem(
            title: 'Subcategories',
            route: SubcategoryScreen.id,
            icon: Icons.category_outlined,
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            route: UploadBannerScreen.id,
            icon: Icons.upload,
          ),
          // AdminMenuItem(
          //   title: 'Products',
          //   route: ProductScreen.id,
          //   icon: Icons.store,
          // ),
        ],
        selectedRoute: VendorsScreen.id,
        onSelected: (item) {
          screenSelector(item);
        },
      ),
    );
  }
}
