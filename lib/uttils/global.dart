import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quotes_app/model_screen/category_model.dart';
import 'package:quotes_app/model_screen/quote_model.dart';

import '../model_screen/category_model.dart';
import 'global.dart';

class Global {
  static Global g1 = Global();
  List<Map> QuotesDataList = [];
  List quotesList = [];

  List<Map> QuotesList = [
    {
      "quotes": "“ Be content to act, and leave the talking to others.”",
      "author": "- Baltasar",
      "category": "Success",
      "color": Colors.pink
    },
    {
      "quotes":
          "“ The only place where success comes before work is in the dictionary.”",
      "author": "- Vidal Sassoon",
      "category": "Success",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“ The starting point of all achievement is desire.”",
      "author": "- Napoleon Hill",
      "category": "Success",
      "color": Colors.orangeAccent
    },
    {
      "quotes":
          "“ If you can't explain it simply, you don't understand it well enough.”",
      "author": "- Albert Einstein",
      "category": "Success",
      "color": Colors.yellow
    },
    {
      "quotes": "“ Don't be afraid to give up the good to go for the great.”",
      "author": "- John D. Rockefeller",
      "category": "success",
      "color": Colors.lightBlue
    },





    {
      "quotes":
          "“ What seems to us as bitter trials are often blessings in disguise.”",
      "author": "- Oscar Wilde",
      "category": "Motivation",
      "color": Colors.pink
    },
    {
      "quotes": "“ If you're going through hell, keep going.”",
      "author": "- Winston Churchill",
      "category": "Motivation",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“ No one can make you feel inferior without your consent.”",
      "author": "- Eleanor Roosevelt",
      "category": "Motivation",
      "color": Colors.orangeAccent
    },
    {
      "quotes": "“ The best revenge is massive success.”",
      "author": "- Frank Sinatra",
      "category": "Motivation",
      "color": Colors.yellow
    },
    {
      "quotes": "“ Opportunities don't happen. You create them.”",
      "author": "- Chris Grosser",
      "category": "Motivation",
      "color": Colors.lightBlue
    },





    {
      "quotes":
          "“ A friend is someone who knows all about you and still loves you.”",
      "author": "- Elbert Hubbard",
      "category": "Love",
      "color": Colors.pink
    },
    {
      "quotes": "“We accept the love we think we deserve.”",
      "author": "- Stephen Chbosky",
      "category": "Love",
      "color": Colors.greenAccent
    },
    {
      "quotes":
          "“It is not a lack of love, but a lack of friendship that makes unhappy marriages.”",
      "author": "- Friedrich Nietzsche",
      "category": "Love",
      "color": Colors.orangeAccent
    },
    {
      "quotes":
          "“Love is like the wind, you can't see it but you can feel it.”",
      "author": "- Jodi Picoult",
      "category": "Love",
      "color": Colors.yellow
    },
    {
      "quotes":
          "“If you can make a woman laugh, you can make her do anything.”",
      "author": "- Hafli Fare",
      "category": "Love",
      "color": Colors.lightBlue
    },





    {
      "quotes":
          "“If we be doomed to marry, we marry; if we be doomed to remain single we do.”",
      "author": "- Thomas Hardy",
      "category": "Single",
      "color": Colors.pink
    },
    {
      "quotes":
          "“You don't have to be part of a couple to be happy, you know.”",
      "author": "-Alice Alone",
      "category": "Single",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“she was completely whole and yet never fully complete”",
      "author": "- Phyllis Reynolds Naylor",
      "category": "Single",
      "color": Colors.orangeAccent
    },
    {
      "quotes":
          "“If we be doomed to marry, we marry; if we be doomed to remain single we do.”",
      "author": "- Thomas Hardy",
      "category": "Single",
      "color": Colors.yellow
    },
    {
      "quotes":
          "“What does an introvert do when he's left alone? He stays alone.”",
      "author": "- Jenni Ferrari-Adler",
      "category": "Single",
      "color": Colors.lightBlue
    },





    {"quotes": "“The soul that sees beauty may sometimes walk alone.”",
      "author": "- Von Goethe",
      "category": "Lonely",
      "color": Colors.pink
    },
    {
      "quotes": "“Ah, look at all the lonely people.”",
      "author": "- The Beatles",
      "category": "Lonely",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“We feel alone, and in this we are connected.”",
      "author": "- Leo Babauta",
      "category": "Lonely",
      "color": Colors.orangeAccent
    },
    {"quotes": "“There is nothing outside of yourself. Look within.”",
      "author": "- Rumi",
      "category": "Lonely",
      "color": Colors.yellow
    },
    {"quotes": "“What a lovely surprise to discover how unlonely being alone can be.”",
      "author": "- Ellen Burstyn",
      "category": "Lonely",
      "color": Colors.lightBlue
    },





    {"quotes": "“We are what we pretend to be, so we must be careful”",
      "author": "- Mother Night",
      "category": "Attitude",
      "color": Colors.pink
    },
    {
      "quotes": "“Don't waste your time with explanations: people only hear.”",
      "author": "- Paulo Coelho",
      "category": "Attitude",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“I am a part of all that I have met”",
      "author": "- Alfred Tennyson",
      "category": "Attitude",
      "color": Colors.orangeAccent
    },
    {"quotes": "“Happiness depends on your mindset and attitude.”",
      "author": "- Roy T. Bennett",
      "category": "Attitude",
      "color": Colors.yellow
    },
    {"quotes": "“Our life is what our thoughts make it.”",
      "author": "- Meditations",
      "category": "Attitude",
      "color": Colors.lightBlue
    },




    {"quotes": "“For every minute you are angry you lose sixty seconds of happiness.”",
      "author": "- Ralph Waldo Emerson",
      "category": "Happiness",
      "color": Colors.pink
    },
    {
      "quotes": "“Folks are usually about as happy as they make their minds up to be.”",
      "author": "- Abraham Lincoln",
      "category": "Happiness",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“Time you enjoy wasting is not wasted time.”",
      "author": "- Phrynette Married",
      "category": "Happiness",
      "color": Colors.orangeAccent
    },
    {"quotes": "“Happiness in intelligent people is the rarest thing I know.”",
      "author": "-  The Garden of Eden",
      "category": "Happiness",
      "color": Colors.yellow
    },
    {"quotes": "“Happiness is when what you think, what you say, and what you do are in harmony.”",
      "author": "- Mahatma Gandhi",
      "category": "Happiness",
      "color": Colors.lightBlue
    },



    {"quotes": "“The reason it hurts so much to separate is because our souls are connected.”",
      "author": "- Nicholas Sparks",
      "category": "Sad",
      "color": Colors.pink
    },
    {
      "quotes": "“So it’s true, when all is said and done, grief is the price we pay for love.”",
      "author": "- E.A. Bucchianeri",
      "category": "Sad",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“All of humanity's problems stem from man's inability to sit quietly in a room alone.”",
      "author": "- Pensées",
      "category": "Sad",
      "color": Colors.orangeAccent
    },
    {"quotes": "“The funniest people are the saddest ones”",
      "author": "- Confucius",
      "category": "Sad",
      "color": Colors.yellow
    },
    {"quotes": "“You’ve changed me forever. And I’ll never forget you.”",
      "author": "-The Elite",
      "category": "Sad",
      "color": Colors.lightBlue
    },




    {"quotes": "“The planet is fine. The people are fucked.”",
      "author": "- George Carlin",
      "category": "Funny",
      "color": Colors.pink
    },
    {
      "quotes": "“Never go to bed mad. Stay up and fight.”",
      "author": "- Phyllis Diller",
      "category": "Funny",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“It's not true that I had nothing on. I had the radio on.”",
      "author": "- Marilyn Monroe",
      "category": "Funny",
      "color": Colors.orangeAccent
    },
    {"quotes": "“When life gives you lemons, squirt someone in the eye.”",
      "author": "- Cathy Guiswite",
      "category": "Funny",
      "color": Colors.yellow
    },
    {"quotes": "“If a book about failures doesn't sell, is it a success?”",
      "author": "- Jerry Seinfeld",
      "category": "Funny",
      "color": Colors.lightBlue
    },




    {"quotes": "“Behind every beautiful thing, there's some kind of pain.”",
      "author": "- Bob Dylan",
      "category": "Beautiful",
      "color": Colors.pink
    },
    {
      "quotes": "“It is a dangerous thing to unbelieve something only because it frightens you.”",
      "author": "- Heartless",
      "category": "Beautiful",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“There is an ocean of silence between us… and I am drowning in it.”",
      "author": "- Ranata Suzuki",
      "category": "Beautiful",
      "color": Colors.orangeAccent
    },
    {"quotes": "“I thought the most beautiful thing in the world must be shadow.”",
      "author": "- Sylvia Plath",
      "category": "Beautiful",
      "color": Colors.yellow
    },
    {"quotes": "“I'm oxygen and he's dying to breathe.”",
      "author": "- Tahereh Mafi",
      "category": "Beautiful",
      "color": Colors.lightBlue
    },




    {"quotes": "“It is not enough that we do our best; sometimes we must do what is required.”",
      "author": "- Winston S. Churchill",
      "category": "Best",
      "color": Colors.pink
    },
    {
      "quotes": "“I have seen the best of you, and the worst of you, and I choose both.”",
      "author": "-Sarah Kay",
      "category": "Best",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“Do your best and let God do the rest.”",
      "author": "- Ben Carson",
      "category": "Best",
      "color": Colors.orangeAccent
    },
    {"quotes": "“Experience is the best teacher.”",
      "author": "- Penelope Douglas",
      "category": "Best",
      "color": Colors.yellow
    },
    {"quotes": "“The best listeners listen between the lines.”",
      "author": "- Nina Malkin",
      "category": "Best",
      "color": Colors.lightBlue
    },




    {"quotes": "“I love deadlines. I love the whooshing noise they make as they go by.”",
      "author": "- Douglas Adams",
      "category": "Work",
      "color": Colors.pink
    },
    {
      "quotes": "“Be nice to nerds. You may end up working for them. We all could.”",
      "author": "- Charles J. Sykes",
      "category": "Work",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“I like work: it fascinates me. I can sit and look at it for hours.”",
      "author": "- erome K. Jerome",
      "category": "Work",
      "color": Colors.orangeAccent
    },
    {"quotes": "“I always arrive late at the office, but I make up for it by leaving early.”",
      "author": "- Charles Lamb",
      "category": "Work",
      "color": Colors.yellow
    },
    {"quotes": "“All happiness depends on courage and work.”",
      "author": "- Honoré de Balzac",
      "category": "Work",
      "color": Colors.lightBlue
    },





    {"quotes": "“Just because you’re my Princess doesn’t mean I won’t fuck you like a slut.”",
      "author": "- Ella Dominguez",
      "category": "Romantic",
      "color": Colors.pink
    },
    {
      "quotes": "“Romantic love is over-rated but that's what we want in life.”",
      "author": "- Ann Marie Aguilar",
      "category": "Romantic",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“Sometimes you find forever in a kiss,and that's when you discover magic exists.”",
      "author": "-  Christy Ann Martine",
      "category": "Romantic",
      "color": Colors.orangeAccent
    },
    {"quotes": "“Love has been the opium of women, like religion by the masses.”",
      "author": "- Kate Millett",
      "category": "Romantic",
      "color": Colors.yellow
    },
    {"quotes": "“Nothing else cuts through the mist of my anguish.”",
      "author": "- Bhuwan Thapaliya",
      "category": "Romantic",
      "color": Colors.lightBlue
    },





    {"quotes": "“Whether you think you can, or you think you can't--you're right.”",
      "author": "- Henry Ford",
      "category": "Thinking",
      "color": Colors.pink
    },
    {
      "quotes": "“Think before you speak. Read before you think.”",
      "author": "- Fran Lebowitz,",
      "category": "Thinking",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“Judge a man by his questions rather than by his answers.”",
      "author": "- Voltaire",
      "category": "Thinking",
      "color": Colors.orangeAccent
    },
    {"quotes": "“The mind is not a vessel to be filled, but a fire to be kindled.”",
      "author": "- Plutarch",
      "category": "Thinking",
      "color": Colors.yellow
    },
    {"quotes": "“All truly great thoughts are conceived while walking.”",
      "author": "- Friedrich Nietzsche",
      "category": "Thinking",
      "color": Colors.lightBlue
    },





    {"quotes": "“Don't feel bad, I'm usually about to die.”",
      "author": "- Rick Riordan",
      "category": "Sorry",
      "color": Colors.pink
    },
    {
      "quotes": "“I feel sorry for anyone who is in a place.”",
      "author": "- Lois Lowry",
      "category": "Sorry",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“Chocolate says 'I'm sorry' so much better than words.”",
      "author": "- Rachel Vincent",
      "category": "Sorry",
      "color": Colors.orangeAccent
    },
    {"quotes": "“There are some experiences in life they haven't invented.”",
      "author": "- Lisa Kleypas",
      "category": "Sorry",
      "color": Colors.yellow
    },
    {"quotes": "“Nothing says you're sorry like a dead bunny.”",
      "author": "- Patricia Briggs",
      "category": "Sorry",
      "color": Colors.lightBlue
    },




    {"quotes": "“Peace begins with a smile..”",
      "author": "- Mother Teresa",
      "category": "Smile",
      "color": Colors.pink
    },
    {
      "quotes": "“Oh no. Don't smile. You'll kill me. I stop breathing when you smile.”",
      "author": "- Tessa Dare",
      "category": "Smile",
      "color": Colors.greenAccent
    },
    {
      "quotes": "“You can only hold a smile for so long, after that it's just teeth.”",
      "author": "- Chuck Palahniuk",
      "category": "Smile",
      "color": Colors.orangeAccent
    },
    {"quotes": "“You'll find that life is still worthwhile, if you just smile.”",
      "author": "- Charlie Chaplin",
      "category": "Smile",
      "color": Colors.yellow
    },
    {"quotes": "“A smile is the best way to get away with trouble even if it’s a fake one.”",
      "author": "- Masashi Kishimoto",
      "category": "Smile",
      "color": Colors.lightBlue
    },

  ];

  String? catename;

  List<QuotesModel> modelList = [];

  List<categoryModel> categoryList = [
    categoryModel(
        name: "Motivation",
        image: "assets/image/motivation.png",
        color: Colors.amber),
    categoryModel(
        name: "Single",
        image: "assets/image/single.png",
        color: Colors.greenAccent),
    categoryModel(
        name: "Lonely", image: "assets/image/lonely.png", color: Colors.pink),
    categoryModel(
        name: "Attitude",
        image: "assets/image/attitude.png",
        color: Colors.blue),
    categoryModel(
        name: "Happiness",
        image: "assets/image/happiness.png",
        color: Colors.amber),
    categoryModel(
        name: "Sad", image: "assets/image/sad.png", color: Colors.teal),
    categoryModel(
        name: "Funny",
        image: "assets/image/funny.png",
        color: Colors.yellowAccent),
    categoryModel(
        name: "Beautiful",
        image: "assets/image/beautiful.png",
        color: Colors.green),
    categoryModel(
        name: "Best",
        image: "assets/image/best.png",
        color: Colors.greenAccent),
    categoryModel(
        name: "Work", image: "assets/image/work.png", color: Colors.blueAccent),
    categoryModel(
        name: "Romantic",
        image: "assets/image/romantic.png",
        color: Colors.amber),
    categoryModel(
        name: "Love", image: "assets/image/love.png", color: Colors.pinkAccent),
    categoryModel(
        name: "Success",
        image: "assets/image/success.png",
        color: Colors.lightGreen),
    categoryModel(
        name: "Thinking",
        image: "assets/image/thinking.png",
        color: Colors.brown),
    categoryModel(
        name: "Sorry",
        image: "assets/image/sorry.png",
        color: Colors.purpleAccent),
    categoryModel(
        name: "Smile",
        image: "assets/image/smile.png",
        color: Colors.lightBlue),
  ];
}
