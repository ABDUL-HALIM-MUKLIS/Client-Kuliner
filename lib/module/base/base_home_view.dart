import 'package:flutter/material.dart';
import 'package:flutter_client_kuliner/data/home_menu_model.dart';
import 'package:flutter_client_kuliner/module/favorite/favorite_view.dart';
import 'package:flutter_client_kuliner/module/home/home_view.dart';
import 'package:flutter_client_kuliner/module/profile/prifle_view.dart';

class BaseHomeView extends StatefulWidget {
  const BaseHomeView({Key? key}) : super(key: key);

  @override
  State<BaseHomeView> createState() => _BaseHomeViewState();
}

class _BaseHomeViewState extends State<BaseHomeView> {
  int _menuSelected = 0;
  HomeMenu _homeMenu = HomeMenu.placeSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuliner Siduarjo'),
      ),
      body: _buildContainerView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _menuSelected,
        selectedItemColor: Colors.pink,
        onTap: _onMenuTapped,
      ),
    );
  }

  Widget _buildContainerView() {
    if (_homeMenu == HomeMenu.placeSelected) {
      return HomeView();
    } else if (_homeMenu == HomeMenu.favoriteSelected) {
      return FavoriteView();
    } else if (_homeMenu == HomeMenu.profileSelected) {
      return ProfileView();
    } else {
      return Container();
    }
  }

  void _onMenuTapped(int index) {
    print('_onMenuTapped ${index.toString()}');
    setState(() {
      _menuSelected = index;
      switch (_menuSelected) {
        case 0:
          _homeMenu = HomeMenu.placeSelected;
          break;
        case 1:
          _homeMenu = HomeMenu.favoriteSelected;
          break;
        case 2:
          _homeMenu = HomeMenu.profileSelected;
          break;
      }
    });
  }
}
