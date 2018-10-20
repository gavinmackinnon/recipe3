import 'package:flutter/material.dart';
import 'package:recipe3/models/recipe.dart';
import 'package:pigment/pigment.dart';

class RecipeScreen extends StatefulWidget {
  Recipe myRandomRecipe;
  RecipeScreen(this.myRandomRecipe,{Key key, this.title}) : super(key: key);
  final String title;



  @override
  _RecipeScreenState createState() => new _RecipeScreenState();
}
class _RecipeScreenState extends State<RecipeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //myFirstRecipe = myRecipeUtility.FirstRecipe;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pigment.fromString('FFF8E2'),
      appBar: new AppBar(
        backgroundColor: Pigment.fromString("FFF8E2"),
        elevation: 0.0 ,
        title: new Text('Zeste', style: new TextStyle(color: Colors.blueGrey),),
        iconTheme: IconThemeData(color: Colors.blueGrey),
      ),

      body: new Center(
        child: new Padding(padding: new EdgeInsets.all(15.0),
          child: new ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new Card(
                elevation: 2.0,
                child: new Column(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: widget.myRandomRecipe.PhotoURL==null?new Text("No Image available :("): new Image.network(widget.myRandomRecipe.PhotoURL),
                    ),
                    new Padding(
                        padding: new EdgeInsets.all(20.0),
                        child: Text(
                         widget.myRandomRecipe.Title,
                          overflow: TextOverflow.fade,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 21.0,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(20.0),
                      child: Text(
                        widget.myRandomRecipe.Description,
                        overflow: TextOverflow.fade,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
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