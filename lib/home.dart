import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grapper_app/colors.dart';
import 'package:grapper_app/model.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  // list of slide
  List<String> imageView = [
    "assets/images/Slider 1.png",
    "assets/images/Slider 2.png",
    "assets/images/Slider 3.png",
  ];

  // list category date
  List<CategoryModel> category = [
    CategoryModel(name: "Fruits", images: "assets/images/fruits.png"),
    CategoryModel(name: "Milk & egg", images: "assets/images/egg.png"),
    CategoryModel(name: "Beverages", images: "assets/images/shop.png"),
    CategoryModel(name: "laundry", images: "assets/images/lundary.png"),
    CategoryModel(name: "vegetables", images: "assets/images/vegatables.png"),
    CategoryModel(name: "Fruits", images: "assets/images/fruits.png"),
    CategoryModel(name: "Milk & egg", images: "assets/images/egg.png"),
    CategoryModel(name: "Beverages", images: "assets/images/shop.png"),
    CategoryModel(name: "laundry", images: "assets/images/lundary.png"),
    CategoryModel(name: "vegetables", images: "assets/images/vegatables.png"),
  ];
  //product category data
  List<ProductModel> category2 = [
    ProductModel(
      name: "Banana",
      images: "assets/images/banana.png",
      price: "\$3.99",
      rate: "4.8",
      rateCount: "(287)",
    ),

    ProductModel(
      name: "Pepper",
      images: "assets/images/vegatables.png",
      price: "\$2.99",
      rate: "4.8",
      rateCount: "(287)",
    ),

    ProductModel(
      name: "Orange",
      images: "assets/images/oramge.png",
      price: "\$2.99",
      rate: "4.8",
      rateCount: "(287)",
    ),

    ProductModel(
      name: "Leamon",
      images: "assets/images/leamon.png",
      price: "\$2.99",
      rate: "4.8",
      rateCount: "(287)",
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            Icon(Icons.motorcycle),
            SizedBox(width: 10),
            Text("61 Hopper street..", style: TextStyle(fontSize: 19)),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down_rounded, size: 34),
            Spacer(),
            Icon(Icons.shopping_cart),
          ],
        ),
        // actions: [Icon(Icons.shopping_cart)],
      ),

      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(
            children: [
              /// banner
              CarouselSlider.builder(
                itemCount: imageView.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Image.asset(imageView[itemIndex]),
                options: CarouselOptions(
                  height: 170,
                  aspectRatio: 1,
                  viewportFraction: 0.6,
                  // initialPage: 0,
                  // enableInfiniteScroll: true,
                  // reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20),

              /// Category
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(category.length, (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(234, 224, 229, 231),
                              // borderRadius: BorderRadius.circular(30),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(category[index].images),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            category[index].name,
                            style: TextStyle(
                              // fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  //
                ),
              ),
              SizedBox(height: 8),
              Divider(),

              Row(
                children: [
                  Text(
                    "Fruits",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sea all",
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                ],
              ),

              // view products
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          234,
                                          193,
                                          224,
                                          236,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),

                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(
                                          category2[index].images,
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 6,
                                      right: 5,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.add),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      category2[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          category2[index].rate,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          category2[index].rateCount,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      category2[index].price,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              //
              Container(
                width: double.infinity,
                height: 77,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 165,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/banana.png"),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    VerticalDivider(
                      width: 2,
                      color: const Color.fromARGB(255, 252, 245, 245),
                      thickness: 3,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "View Bascket",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10),

                    Icon(Icons.shopping_cart, color: Colors.white, size: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
