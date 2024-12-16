import 'package:flutter/material.dart';

void main() {
  runApp(NikeStoreApp());
}

class NikeStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NikeStoreScreen(),
    );
  }
}

class NikeStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Nike Store",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/shoe_image.png'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Nike Air Max ( Pink )",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "\$1200",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(Icons.star, color: Colors.amber, size: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Nike Air Max is a sneakers from the Nike Collection, it has various colors from various sizes that is affordable in all form. Check out for the Original Nike because there are lot of Fake product out there and they seem to pose like Nike but they absolutely not Nike. Always wash with designated washing materials and wash with clean water.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Reviews",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sabinus",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "2 weeks ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(Icons.star, color: Colors.amber, size: 20),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "The sneakers is really very good and I love the color, I will be buying another one very soon for my brother and also my sister, I recommend this sneaker to anybody. It's great.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
