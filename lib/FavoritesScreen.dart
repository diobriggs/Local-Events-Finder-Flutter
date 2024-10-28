import 'package:flutter/material.dart';

List<String> favoritedEvents = [];

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: favoritedEvents.isEmpty
          ? Center(child: Text("No favorites yet!"))
          : ListView.builder(
              itemCount: favoritedEvents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoritedEvents[index]),
                );
              },
            ),
    );
  }
}
