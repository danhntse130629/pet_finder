import 'package:flutter/material.dart';
import 'package:pet_finder/data.dart';
import 'package:pet_finder/pet_widget.dart';

class CategoryList extends StatefulWidget {

  final Category category;

  CategoryList({@required this.category});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          (widget.category == Category.HAMSTER ? "Hamster" : widget.category == Category.CAT ? "Cat" : widget.category == Category.BUNNY ? "Bunny" : "Dog") + " Category",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                buildFilter("Mating", false),
                buildFilter("Adoption", true),
                buildFilter("Disappear", true),

              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                childAspectRatio: 1 / 1.55,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: getPetList().map((item) {
                  return GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PetDetail(pet: item)),
                      ); */
                    },
                    child: buildPet(item, null)
                  );
                }).toList(),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget buildFilter(String name, bool selected){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          width: 1,
          color: selected ? Colors.transparent : Colors.grey[300],
        ),
        color: selected ? Colors.blue[300] : Colors.white,
      ),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: selected ? Colors.white : Colors.grey[800],
            ),
          ),

          selected 
          ? Row(
            children: [

              SizedBox(
                width: 8,
              ),

              Icon(
                Icons.clear,
                color: Colors.white,
                size: 18,
              ),

            ],
          )
          : Container(),
        ],
      ),
    );
  }

}