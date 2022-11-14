import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int qcounter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Detail",
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.favorite_outline,
                      size: 18.0,
                      color: Colors.red[800],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.share_outlined,
                    size: 18.0,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/detail_img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 400,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  transform: Matrix4.translationValues(0, -25, 0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          width: 40,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Wooden Coff",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "\$240",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 4,
                              itemSize: 16,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(height: 12.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Choose a color :",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.grey[500],
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Colors.grey[500],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.orange[500],
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.grey[300],
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.brown[600],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Select Quality :",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Container(
                                  height: 27,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            qcounter--;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 12.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        height: 27,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                        ),
                                        child: Center(
                                          child: Text(
                                            "$qcounter",
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            qcounter++;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 12.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.grey[500],
                                ),
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    "ADD TO CART",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
