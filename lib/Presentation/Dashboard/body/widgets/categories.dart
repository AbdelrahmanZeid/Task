import 'package:flutter/material.dart';
import 'package:task/application/services/get_user_service.dart';
import 'package:task/presentation/dashboard/body/widgets/category_selection.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Future<List<dynamic>> fetchData() async {
    return await GetUserService().fetchData();
  }

  void initState() {
    fetchData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.categoriesView,
              style: TextStyle(
                fontSize: AppSize.s14,
                color: ColorManager.titleColor,
                fontWeight: FontWeightManager.regular,
              ),
            ),
            Text(
              AppStrings.seeAll,
              style: TextStyle(
                color: ColorManager.seeAllColor,
                fontWeight: FontWeightManager.regular,
                fontSize: AppSize.s14,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        Expanded(
          child: FutureBuilder<List<dynamic>>(
            future: fetchData(),
            builder:
                (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return CategorySelection(
                      name: snapshot.data![index]['name'],
                      id: snapshot.data![index]['id'],
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
