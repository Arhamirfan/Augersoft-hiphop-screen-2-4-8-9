import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class placetype {
  String title, imageURL;

  placetype({required this.title, required this.imageURL});

  static List<placetype> generate_places() {
    return [
      //todo : change in screen 2 asset pictures
      placetype(title: 'Flat', imageURL: 'images/pic1.png'),
      placetype(title: 'House', imageURL: 'images/pic2.png'),
      placetype(title: 'Secondary Unit', imageURL: 'images/pic3.png'),
      placetype(title: 'Unique space', imageURL: 'images/pic4.png'),
      placetype(title: 'Bed and breakfast', imageURL: 'images/pic5.png'),
      placetype(title: 'Boutique hotel', imageURL: 'images/pic6.png'),
    ];
  }
}

class placedescription {
  String title, description;

  placedescription({required this.title, required this.description});

  static List<placedescription> generate_description() {
    return [
      placedescription(
          title: 'Bed and breakfast',
          description:
              'A hospitality business offering guests breakfast with a host onsite.'),
      placedescription(
          title: 'Nature lodge',
          description:
              'A business offering stays near natural settings like forest or mountains.'),
      placedescription(
          title: 'Farm stay',
          description:
              'A rural stay where guests may spend time with animals, hiking or crafting.'),
      placedescription(
          title: 'Minsu',
          description:
              'A hospitality business offering guests private rooms in Taiwan.'),
      placedescription(
          title: 'Casa particular',
          description:
              'A private room in a room that feels like a bed and breakfast in Cuba.'),
      placedescription(
          title: 'Ryokan',
          description:
              'A small inn offering guests a unique cultural experience in Japan.'),
    ];
  }
}

class Amenity {
  String title;
  FaIcon icon;

  Amenity({required this.title, required this.icon});

  //todo: change in screen 8 icons.
  static List<Amenity> generate_amenityType() {
    return [
      Amenity(
        title: 'Pool',
        icon: FaIcon(FontAwesomeIcons.swimmingPool, color: Colors.black),
      ),
      Amenity(
        title: 'Hot tub',
        icon: FaIcon(FontAwesomeIcons.hotTub, color: Colors.black),
      ),
      Amenity(
        title: 'Patio',
        icon: FaIcon(FontAwesomeIcons.hamburger, color: Colors.black),
      ),
      Amenity(
        title: 'BBQ grill',
        icon: FaIcon(FontAwesomeIcons.chessBoard, color: Colors.black),
      ),
      Amenity(
        title: 'Fire pit',
        icon: FaIcon(FontAwesomeIcons.solarPanel, color: Colors.black),
      ),
      Amenity(
        title: 'Pool table',
        icon: FaIcon(FontAwesomeIcons.chessBishop, color: Colors.black),
      ),
      Amenity(
        title: 'Indoor fireplace',
        icon: FaIcon(FontAwesomeIcons.houseDamage, color: Colors.black),
      ),
      Amenity(
        title: 'Outdoor dining area',
        icon: FaIcon(FontAwesomeIcons.hotel, color: Colors.black),
      ),
      Amenity(
        title: 'unknown',
        icon: FaIcon(FontAwesomeIcons.question, color: Colors.black),
      ),
    ];
  }
}
