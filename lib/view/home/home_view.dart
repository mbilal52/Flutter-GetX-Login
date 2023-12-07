

import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/data/response/status.dart';
import 'package:flutter_getx_mvvm/res/components/general_exception_widget.dart';
import 'package:flutter_getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:flutter_getx_mvvm/res/routes/routes_name.dart';
import 'package:flutter_getx_mvvm/view_models/controller/home/home_view_model.dart';
import 'package:flutter_getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  UserPreference userPreference = UserPreference();
  final _homeViewModel = Get.put(HomeViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeViewModel.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            userPreference.removeUser().then((value){
              Get.toNamed(RoutesName.loginScreen);
            });
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Obx(() {
        switch (_homeViewModel.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if (_homeViewModel.error.value == 'No Internet') {
              return InternetExceptionWidget(onpress: () {
                _homeViewModel.refreshApi();
              });
            } else {
              return GeneralExceptionWidget(onpress: (){
                _homeViewModel.refreshApi();
              });
            }
          case Status.COMPLETED:
            return ListView.builder(
                itemCount: _homeViewModel.userList.value.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(_homeViewModel.userList
                            .value.data![index].avatar.toString()),
                      ),
                      title: Text(
                          _homeViewModel.userList.value.data![index].firstName
                              .toString()),
                      subtitle: Text(
                          _homeViewModel.userList.value.data![index].email
                              .toString()),

                    ),
                  );
                });
        }
      }),
    );
  }
}
