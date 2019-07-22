import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String assetImage;
  final String title;

  DetailsPage({this.assetImage, this.title});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.title),
              background: Hero(
                tag: widget.title,
                child: Image.asset(widget.assetImage),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 30,
              ),
              Text('Price RM 30'),
              SizedBox(
                height: 30,
              ),
              Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The description of the T-Shirt is here. The T-shirt is made in India. The famous brand Clasic Polo is the company manufactured this kind of T- shirts.,There are many colors in this brand we can see!',
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Locations',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '',
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 300,
              ),
              SizedBox(
                height: 130,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
