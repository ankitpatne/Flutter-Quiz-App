import 'package:pro3/models/quiz_questions.dart';
import 'dart:math';

const allQuestions = [
  QuizQuestions(
        'Which movie won the Academy Award for Best Picture in 2020?',
        [
            'Parasite',
            '1917',
            'Joker',
            'Once Upon a Time in Hollywood',
        ],
    ),
    QuizQuestions(
        'In the TV series "Breaking Bad," what is Walter White\'s alias as a meth manufacturer?',
        [
            'Heisenberg',
            'The Cook',
            'Mr. Blue',
            'The Chemist',
        ],
    ),
    QuizQuestions(
        'Who directed the movie "The Shawshank Redemption"?',
        [
            'Frank Darabont',
            'Christopher Nolan',
            'Steven Spielberg',
            'Quentin Tarantino',
        ],
    ),
    QuizQuestions(
        'In the TV series "Stranger Things," what is the alternate dimension called?',
        [
            'The Upside Down',
            'The Dark Realm',
            'The Other Side',
            'The Shadow Zone',
        ],
    ),
    QuizQuestions(
        'Which actor plays the character Tony Stark in the Marvel Cinematic Universe?',
        [
            'Robert Downey Jr.',
            'Chris Evans',
            'Chris Hemsworth',
            'Mark Ruffalo',
        ],
    ),
    QuizQuestions(
        'What is the title of the first episode of "Game of Thrones"?',
        [
            'Winter Is Coming',
            'The North Remembers',
            'Fire and Blood',
            'A Golden Crown',
        ],
    ),
    QuizQuestions(
        'Which movie features a character named Hannibal Lecter?',
        [
            'The Silence of the Lambs',
            'Se7en',
            'Fight Club',
            'American Psycho',
        ],
    ),
    QuizQuestions(
        'In the TV series "Friends," what is the name of Ross Geller\'s second wife?',
        [
            'Emily',
            'Janice',
            'Carol',
            'Mona',
        ],
    ),
    QuizQuestions(
        'Who directed the film "Inception"?',
        [
            'Christopher Nolan',
            'Steven Spielberg',
            'Quentin Tarantino',
            'Martin Scorsese',
        ],
    ),
    QuizQuestions(
        'What is the title of the first episode of "Breaking Bad"?',
        [
            'Pilot',
            'Felina',
            'Ozymandias',
            'Fly',
        ],
    ),
    QuizQuestions(
        'Which movie features a character named Tyler Durden?',
        [
            'Fight Club',
            'American Psycho',
            'The Shawshank Redemption',
            'Pulp Fiction',
        ],
    ),
    QuizQuestions(
        'In the TV series "The Office," who is the regional manager of Dunder Mifflin Scranton?',
        [
            'Michael Scott',
            'Jim Halpert',
            'Dwight Schrute',
            'Pam Beesly',
        ],
    ),
    QuizQuestions(
        'Which film won the Academy Award for Best Animated Feature in 2021?',
        [
            'Soul',
            'Onward',
            'Wolfwalkers',
            'Over the Moon',
        ],
    ),
    QuizQuestions(
        'In the TV series "The Mandalorian," what species is the character Grogu?',
        [
            'Yoda\'s species',
            'Ewok',
            'Wookiee',
            'Rodian',
        ],
    ),
    QuizQuestions(
        'Who directed the movie "The Dark Knight"?',
        [
            'Christopher Nolan',
            'Tim Burton',
            'Zack Snyder',
            'Joss Whedon',
        ],
    ),
  QuizQuestions(
    'What is the capital of India?',
    [
      'Delhi',
      'Mumbai',
      'Kolkata',
      'Chennai',
    ],
  ),
  QuizQuestions(
    'What is the capital of Australia?',
    [
      'Canberra',
      'Sydney',
      'Melbourne',
      'Perth',
    ],
  ),
  QuizQuestions(
    'What does the acronym "URL" stand for?',
    [
      'Uniform Resource Locator',
      'Universal Resource Language',
      'Unified Resolution Link',
      'Ultimate Reference Locator',
    ],
  ),
  QuizQuestions(
    'In programming, what does the term "API" stand for?',
    [
      'Application Programming Interface',
      'Advanced Programming Instruction',
      'Automated Program Interaction',
      'Application Process Integration',
    ],
  ),
  QuizQuestions(
    'Which programming language is known as the "mother of all languages"?',
    [
      'C',
      'Java',
      'Python',
      'Assembly Language',
    ],
  ),
  QuizQuestions(
    'What is the smallest unit of data in a computer?',
    [
      'Bit',
      'Byte',
      'Nibble',
      'Megabyte',
    ],
  ),
  QuizQuestions(
    'Which company developed the Python programming language?',
    [
      'Python Software Foundation',
      'Microsoft',
      'Google',
      'Facebook',
    ],
  ),
  QuizQuestions(
    'What does the acronym "HTML" stand for?',
    [
      'Hypertext Markup Language',
      'Hyper Transfer Markup Language',
      'High-Level Textual Markup Language',
      'Hyperlink and Textual Markup Language',
    ],
  ),
  QuizQuestions(
    'In binary code, what does the number 10 represent?',
    [
      '2',
      '4',
      '8',
      '16',
    ],
  ),
  QuizQuestions(
    'Who is often referred to as the "Father of the World Wide Web"?',
    [
      'Tim Berners-Lee',
      'Mark Zuckerberg',
      'Bill Gates',
      'Steve Jobs',
    ],
  ),
  QuizQuestions(
    'What is the main function of a firewall in computer security?',
    [
      'Monitor and control incoming and outgoing network traffic',
      'Enhance computer processing speed',
      'Detect and remove viruses',
      'Manage computer memory usage',
    ],
  ),
  QuizQuestions(
    'Which programming language shares its name with an island in Indonesia?',
    [
      'Java',
      'Python',
      'C++',
      'Ruby',
    ],
  ),
  QuizQuestions(
    'What is the largest wildlife sanctuary in India?',
    [
      'Dibru-Saikhowa Wildlife Sanctuary',
      'Periyar Wildlife Sanctuary',
      'Sundarbans Wildlife Sanctuary',
      'Bori Wildlife Sanctuary',
    ],
  ),
  QuizQuestions(
    'In which state is the Ajanta Caves located?',
    [
      'Maharashtra',
      'Madhya Pradesh',
      'Gujarat',
      'Karnataka',
    ],
  ),
  QuizQuestions(
    'Which festival is also known as the "Festival of Lights" in India?',
    [
      'Diwali',
      'Holi',
      'Navratri',
      'Eid',
    ],
  ),
  QuizQuestions(
    'Who is known as the "Missile Man of India"?',
    [
      'Dr. A.P.J. Abdul Kalam',
      'Jawaharlal Nehru',
      'Indira Gandhi',
      'Sardar Patel',
    ],
  ),
  QuizQuestions(
    'Which Indian state is known as the "Spice Garden of India"?',
    [
      'Kerala',
      'Karnataka',
      'Andhra Pradesh',
      'Tamil Nadu',
    ],
  ),
  QuizQuestions(
    'What is the official animal of India?',
    [
      'Royal Bengal Tiger',
      'Indian Elephant',
      'Indian Rhinoceros',
      'Asiatic Lion',
    ],
  ),
  QuizQuestions(
    'Which historical figure is known for spreading Buddhism?',
    [
      'Ashoka the Great',
      'Akbar',
      'Shivaji Maharaj',
      'Rani Padmini',
    ],
  ),
  QuizQuestions(
    'What is the world\'s largest ocean?',
    [
      'Pacific Ocean',
      'Atlantic Ocean',
      'Indian Ocean',
      'Southern Ocean',
    ],
  ),
  QuizQuestions(
    'Which country is known as the "Land of the Midnight Sun"?',
    [
      'Norway',
      'Canada',
      'Finland',
      'Russia',
    ],
  ),
  QuizQuestions(
    'What is the world\'s highest mountain?',
    [
      'Mount Everest',
      'K2',
      'Kangchenjunga',
      'Lhotse',
    ],
  ),
  QuizQuestions(
    'In which country can you find the Great Barrier Reef?',
    [
      'Australia',
      'Brazil',
      'Mexico',
      'Thailand',
    ],
  ),
  QuizQuestions(
    'Which desert is the largest hot desert in the world?',
    [
      'Sahara Desert',
      'Arabian Desert',
      'Gobi Desert',
      'Karakum Desert',
    ],
  ),
  QuizQuestions(
    'Which river is the longest in the world?',
    [
      'Nile',
      'Amazon',
      'Yangtze',
      'Mississippi',
    ],
  ),
  QuizQuestions(
    'Which city is considered the "Venice of the North"?',
    [
      'St. Petersburg',
      'Amsterdam',
      'Stockholm',
      'Bruges',
    ],
  ),
  QuizQuestions(
    'What is the smallest country in the world?',
    [
      'Vatican City',
      'Monaco',
      'San Marino',
      'Nauru',
    ],
  ),
  QuizQuestions(
    'Which country is known as the "Land of the Rising Sun"?',
    [
      'Japan',
      'China',
      'South Korea',
      'Vietnam',
    ],
  ),
  QuizQuestions(
    'Who is the protagonist in the anime "Naruto"?',
    [
      'Naruto Uzumaki',
      'Sasuke Uchiha',
      'Sakura Haruno',
      'Kakashi Hatake',
    ],
  ),
  QuizQuestions(
    'In "One Piece," what is the name of Monkey D. Luffy\'s straw hat?',
    [
      'Gomu Gomu no Straw Hat',
      'Straw Hat of Dreams',
      'Luffy\'s Lucky Hat',
      'Pirate King Hat',
    ],
  ),
  QuizQuestions(
    'Which anime features a character named Goku and his quest for the Dragon Balls?',
    [
      'Dragon Ball',
      'Naruto',
      'One Piece',
      'Bleach',
    ],
  ),
  QuizQuestions(
    'In "Attack on Titan," what is the name of the elite military unit fighting Titans?',
    [
      'Scout Regiment',
      'Garrison Regiment',
      'Military Police Brigade',
      'Survey Corps',
    ],
  ),
  QuizQuestions(
    'Who is the creator of the anime "Death Note"?',
    [
      'Tsugumi Ohba and Takeshi Obata',
      'Masashi Kishimoto',
      'Hajime Isayama',
      'Eiichiro Oda',
    ],
  ),
  QuizQuestions(
    'Which anime features a character named Edward Elric and his brother Alphonse?',
    [
      'Fullmetal Alchemist',
      'My Hero Academia',
      'Cowboy Bebop',
      'Hunter x Hunter',
    ],
  ),
  QuizQuestions(
    'In "Sailor Moon," what is the superhero name of Usagi Tsukino?',
    [
      'Sailor Moon',
      'Sailor Mars',
      'Sailor Venus',
      'Sailor Jupiter',
    ],
  ),
  QuizQuestions(
    'Which anime series is known for its giant mechs and the phrase "Evangelion Unit-01"?',
    [
      'Neon Genesis Evangelion',
      'Gundam Wing',
      'Code Geass',
      'Cowboy Bebop',
    ],
  ),
  QuizQuestions(
    'What is the name of the spirit world in "Spirited Away"?',
    [
      'The Spirit Realm',
      'Netherworld',
      'The Other Side',
      'The Bathhouse',
    ],
  ),
  QuizQuestions(
    'Who is the main character in "My Hero Academia"?',
    [
      'Izuku Midoriya',
      'Katsuki Bakugo',
      'Shoto Todoroki',
      'All Might',
    ],
  ),
];

List<QuizQuestions> getRandomQuestions() {
  var random = Random();
  var questions = <QuizQuestions>[];

  while (questions.length != 5) {
    var question = allQuestions[random.nextInt(allQuestions.length)];

    if (!questions.contains(question)) {
      questions.add(question);
    }
  }

  return questions;
}

var questions = getRandomQuestions();
