import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/text_button.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:flutter/material.dart';

class DramaSection extends StatelessWidget {
  const DramaSection({Key? key, required this.prime}) : super(key: key);

  final bool prime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      height: 450,
      width: ScreenDetails.screenWidth,
      color: AppColor.dramabg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomeText(
            name: "Drama Name",
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(height: 10),
          const Text(
            "Comedy, Drama, Family, Romance",
            style: TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          if (prime)
             CustomeTextButton(
              bgColor: AppColor.pinkColor900,
              buttonName: "get prime",onTap: (){},
            ),
          const SizedBox(height: 10),
           CustomeTextButton(
            bgColor: AppColor.green800,
            buttonName: "see all",onTap: (){},
          ),
          const SizedBox(height: 10),
          CustomeText(name: "recent episode".toUpperCase()),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (var itemList in AppList.popularMovieList)
                  Container(
                    height: 120,
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(itemList.imageLink),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        //** banner Scetion */
                        if (prime)
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
                            decoration: const BoxDecoration(
                                color: AppColor.pinkColor900,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(3),
                                  bottomRight: Radius.circular(3),
                                )),
                            child: const CustomeText(
                              name: "PRIME",
                            ),
                          ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomeText(name: "Drama Name Ep."),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  CustomeText(name: itemList.rating.toString()),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
