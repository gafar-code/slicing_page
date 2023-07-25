import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slicing_page/pages/detail_product.dart';
import 'package:slicing_page/text_form.dart';
import 'package:slicing_page/theme.dart';

const _bottomNavBar = [Icons.home_outlined, Icons.access_time_sharp, Icons.message_outlined, Icons.person_outline];
const _itemData = [
  {
    "title": "B 1056 RV",
    "image": "https://www.ktbfuso.co.id/wp-content/uploads/2023/02/canter.webp",
    "jo": "445261",
    "dn": "DN20230612",
    "count": "6",
  },
  {
    "title": "B 7524 TR",
    "image": "https://www.ktbfuso.co.id/wp-content/uploads/2023/02/canter.webp",
    "jo": "552145",
    "dn": "DN20230613",
    "count": "10",
  },
  {
    "title": "B 5612 CF",
    "image": "https://www.ktbfuso.co.id/wp-content/uploads/2023/02/canter.webp",
    "jo": "47812",
    "dn": "DN20230614",
    "count": "15",
  }
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: primaryColor),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundImage: CachedNetworkImageProvider(
                        "https://content.latest-hairstyles.com/wp-content/uploads/sharp-fade-with-straight-fringe-for-boys.jpg",
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Welcome Back,",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        const Text(
                          "Admin",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.black,
                            ),
                            Align(
                              alignment: Alignment(1, -.9),
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 3,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      const CustomTextForm(
                        hint: "Search a Truck",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic_none_outlined),
                      ),
                      ...List.generate(
                          3,
                          (index) => Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Card(
                                  elevation: .5,
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Row(
                                      children: [
                                        CachedNetworkImage(
                                          width: 140,
                                          height: 140,
                                          imageUrl: _itemData[index]["image"]!,
                                        ),
                                        const SizedBox(width: 12),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _itemData[index]["title"]!,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Text(
                                              "JO Number : ${_itemData[index]["jo"]!}",
                                              style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              "DN Number : ${_itemData[index]["dn"]!}",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey.shade500,
                                              ),
                                            ),
                                            const SizedBox(height: 18),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * .45,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Material(
                                                    color: secondaryColor,
                                                    borderRadius: BorderRadius.circular(32),
                                                    child: InkWell(
                                                      borderRadius: BorderRadius.circular(32),
                                                      onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                                                          return const DetailProduct();
                                                        }));
                                                      },
                                                      child: const Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                                                        child: Text(
                                                          "Select",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${_itemData[index]["count"]!} PCKG",
                                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                    ],
                  ),
                ),
              ),
              Material(
                color: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(_bottomNavBar.length, (index) {
                      bool isActive = index == 0;

                      return Material(
                          color: isActive ? secondaryColor : primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              _bottomNavBar[index],
                              size: 18,
                              color: isActive ? Colors.white : Colors.black,
                            ),
                          ));
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
