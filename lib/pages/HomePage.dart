
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.white,),),
        backgroundColor: Colors.black,
        title: Text("WhatsApp", style: TextStyle(color: Colors.white, fontFamily: "Billabong", fontSize: 23, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.white,),),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue[200]!, width: 1),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // 1. Header du post (avatar + nom + ...)
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[200],
                    child: const Text("J"),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Jehonovie",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(), // pousse l'icône à droite
                  const Icon(Icons.more_vert),
                ],
              ),
              const SizedBox(height: 12),

              // 2. Image / placeholder
              Container(
                width: double.maxFinite,
                height: 200,
                color: Colors.grey[300],
                child: const Center(
                  child: Text(
                    "Photo 📸",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // 3. Texte du post
              const Text(
                "Premier jour de Flutter avec mes étudiantes ! On fait simple pour bien comprendre les widgets de base.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 12),

              // 4. Ligne d'actions ( ⭐💬📤 )
              Row(
                children: [
                  const Icon(Icons.favorite_border),
                  const SizedBox(width: 8),
                  const Icon(Icons.comment_outlined),
                  const SizedBox(width: 8),
                  const Icon(Icons.send),
                  const Spacer(),
                  const Icon(Icons.bookmark_border),
                ],
              ),
            ],
          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.green,), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.search,  color: Colors.green,), label: "Rechercher"),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt,  color: Colors.green,), label: "Camera"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box,  color: Colors.green,), label: "Profil"),
      ],),
    );
  }
}