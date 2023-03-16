import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/widgets/edit_text.dart';
import 'package:grocery/widgets/image_view.dart';

import '../controller/searchcontroller.dart';
import '../utils/image_utils.dart';
import '../utils/string_utils.dart';
import '../widgets/TextView.dart';
import '../widgets/appBar.dart';
import '../widgets/detailcart.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      init: SearchController(),
      builder: (_) {
        return Scaffold(
          appBar: Appbar('', true, [
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45.0, right: 24),
                      child: EditText(
                          controller: _.searchQuery,
                          filled: true,
                          fillColor: AppColors.white,
                          hint: '${StringUtils.searchVeg}',
                          prefixIcon: Icon(Icons.search_outlined),
                          suffixIcon: PopupMenuButton(constraints: BoxConstraints(minWidth: 240,),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            icon:
                                ImageView(Image_utils.filter, ImageType.asset),
                            itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                  value: StringUtils.fruit,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextView('${StringUtils.fruit}'),
                                      Checkbox(
                                          value: false,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          onChanged: ((value) {}))
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: StringUtils.veg,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextView('${StringUtils.veg}'),
                                      Checkbox(
                                          value: false,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          onChanged: ((value) {}))
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: StringUtils.backery,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextView('${StringUtils.backery}'),
                                      Checkbox(
                                          value: false,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          onChanged: ((value) {}))
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: StringUtils.dailyprd,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextView('${StringUtils.dailyprd}'),
                                      Checkbox(
                                          value: false,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          onChanged: ((value) {}))
                                    ],
                                  ))
                            ],
                          )),
                    ))),

          ]),
          body: Padding(
            padding: const EdgeInsets.only(top:16.0,left:24
                ,right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: _.scroll,

              physics: AlwaysScrollableScrollPhysics(),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                SizedBox(height: 8,),
                TextView('${StringUtils.searchlable}',fontWeight: FontWeight.w600,fontSize: 18,),
                GroceryCard(_.groceryDetails)
              ],),
            ),
          ),
        );
      },
    );
  }
}
