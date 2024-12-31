import 'package:flutter/material.dart';
import 'package:news_app/recipe.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailScreen({required this.recipe});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset(widget.recipe.imageUrl),
            const SizedBox(height: 14.0),
            Text(
              widget.recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text('${ingredient.quantity}'
                      '${ingredient.measure}'
                      '${ingredient.name}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
