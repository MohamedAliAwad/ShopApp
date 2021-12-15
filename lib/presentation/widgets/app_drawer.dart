import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vfsocial/logic/blocs/auth/auth_bloc.dart';
import 'package:vfsocial/presentation/screes/login_screen.dart';
import 'package:vfsocial/presentation/screes/order_screen.dart';
import 'package:vfsocial/presentation/screes/user_products_screen.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friend !'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) =>
                      BlocProvider.of<AuthBloc>(context).state is Authunticated
                          ? const OrdersScreen()
                          : ShopLoginScreen()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Your Products'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>
                      BlocProvider.of<AuthBloc>(context).state is Authunticated
                          ? UserProductsScreen()
                          : ShopLoginScreen(),
                ),
              );
            },
          ),
          Divider(),
          if (BlocProvider.of<AuthBloc>(context).state is Authunticated)
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out'),
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
