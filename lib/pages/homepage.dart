import 'package:flutter/material.dart';
import 'package:jewelry_app/widgets/category_containers.dart';
import 'package:jewelry_app/widgets/collection_widget.dart';
import 'package:jewelry_app/widgets/product_tiles.dart';
import 'package:jewelry_app/widgets/product_type_model.dart';
import 'package:jewelry_app/widgets/time_closing_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  final List categoryNames = [
    'EARRINGS',
    'BRACELET',
    'NECKLACE',
    'RINGS',
    'WATCHES'
  ];
  final List typeNames = [
    '  All  ',
    'Newest',
    'Trendy',
    'Popular',
    'Women',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 7,
              right: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        ImageIcon(
                          size: 27,
                          color: Colors.brown,
                          AssetImage(
                            'assets/icons/location_pin.png',
                          ),
                        ),
                        Text(
                          'Delhi India',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        ImageIcon(
                          AssetImage(
                            'assets/icons/down.png',
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.grey.shade300,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/icons/bell-ring.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 310,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 19,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30)),
                      width: 50,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          color: Colors.white,
                          'assets/icons/left-and-right-arrows.png',
                          width: 55,
                          height: 55,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 230,
                      width: 500,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: false,
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) =>
                            const CollectionsContainer(),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 5,
                    effect: const ScrollingDotsEffect(
                      activeDotColor: Colors.brown,
                      spacing: 18,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.brown[400]),
                    ),
                  ],
                ),
                Container(
                  color: Colors.transparent,
                  height: 130,
                  width: 500,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => CategoryContainer(
                      categoryName: categoryNames[index],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Flash Sale",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Closing in :",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700],
                          ),
                        ),
                        const ClosingBox(
                          boxText: '02',
                        ),
                        const Text(
                          ":",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const ClosingBox(
                          boxText: '12',
                        ),
                        const Text(
                          ":",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const ClosingBox(
                          boxText: '56',
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.transparent,
                  height: 48,
                  width: 500,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        ProductTypes(productType: typeNames[index]),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // Instead of using Expanded, use Flexible with flex: 1
                SizedBox(
                  height: 500,
                  width: 500,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => const ProductTiles(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
