import 'package:flutter/material.dart';

List<String> favoritedEvents = [];

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  void _removeFromFavorites(int index) {
    setState(() {
      favoritedEvents.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Access the theme to use app-wide colors

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorites",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: theme.primaryColor, // Use the app's primary color
      ),
      body: favoritedEvents.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: theme.colorScheme.secondary, // Secondary color for the icon
                    size: 80,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "No favorites yet!",
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.hintColor, // Hint color for "empty" message
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: favoritedEvents.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      leading: Icon(
                        Icons.event,
                        color: theme.primaryColor, // Event icon using primary color
                      ),
                      title: Text(
                        favoritedEvents[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        onPressed: () => _removeFromFavorites(index), // Remove item logic
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
