import 'package:flutter/material.dart';


class PopularFoodsWidget extends StatefulWidget {
  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
         BoxShadow(
          color: Color(0xFFfae3e2),
          blurRadius: 25.0,
          offset: Offset(0,1),
        ),
      ]),
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularFoodTitle(),
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  PopularFoodTiles(
      {Key? key,
        required this.name,
        required this.imageUrl,
        required this.rating,
        required this.numberOfRating,
        required this.price,
        required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      },
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(7.0),
              ),
            ),
            child: Container(
              color: Colors.white,
              width: 170,
              height: 210,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        //this container will reserve all width in top card
                     //   color: Colors.grey,
                       alignment: Alignment.topRight,
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 5, top: 5),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration:const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFfae3e2),
                                  blurRadius: 25.0,
                                  offset: Offset(0.0, 0.75),
                                ),
                              ]),
                          child: const Icon(
                            Icons.favorite,
                            color: Color(0xFFfb3132),
                            size: 16,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                            child: Image.asset(
                              'images/popular_perfume/' +
                                  imageUrl +
                                  ".jpeg",
                              width: 130,
                              height: 140,
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: Text(name,
                            style: TextStyle(
                                color: Color(0xFF6e6e71),
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(right: 5),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFfae3e2),
                                  blurRadius: 25.0,
                                  offset: Offset(0.0, 0.75),
                                ),
                              ]),
                          child: Icon(
                            Icons.near_me,
                            color: Color(0xFFfb3132),
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                                rating,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 3, left: 5),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xFFfb3132),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xFFfb3132),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xFFfb3132),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xFFfb3132),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xFF9b9b9c),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text("($numberOfRating)",
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                        child: Text('\$' + price,
                            style: TextStyle(
                                color: Color(0xFF6e6e71),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class PopularFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
         Text(
            "Popluar Perfume",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularFoodTiles(
            name: "incense",
            imageUrl: "incense",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "incense"),
        PopularFoodTiles(
            name: "Mabakher",
            imageUrl: "mabakher",
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            slug: "mabakher"),
        PopularFoodTiles(
            name: "Masabeh",
            imageUrl: "masabeh",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
        PopularFoodTiles(
            name: "Oud-Composition",
            imageUrl: "oud-composition",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularFoodTiles(
            name: "Arabic-Composition-Perfumes",
            imageUrl: "arabic-composition-perfumes",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        PopularFoodTiles(
            name: "Bath-And-Body",
            imageUrl: "bath-and-body",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularFoodTiles(
            name: "European-Composition-Perfumes",
            imageUrl: "european-composition-perfumes",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        // PopularFoodTiles(
        //     name: "",
        //     imageUrl: "",
        //     rating: '4.9',
        //     numberOfRating: '200',
        //     price: '15.06',
        //     slug: "fried_egg"),
        // PopularFoodTiles(
        //     name: "",
        //     imageUrl: "",
        //     rating: "4.6",
        //     numberOfRating: "150",
        //     price: "12.00",
        //     slug: ""),
      ],
    );
  }
}
