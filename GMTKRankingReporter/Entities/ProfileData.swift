//
//  ProfileData.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 28/07/2022.
//
import Foundation
import SwiftUI
let gameData =
[
GameProfile(id:1,name:"Rolling for Royalty",score:4322,hours:"47 hours",genre:"Strategy",size:"HTML5",imageName:"RollingforRoyalty_main",description:"This is Rolling for Royalty. A game all about rolling dice, upgrading dice, acquiring new dice... It's mostly about dice. And you fight wildlife and monsters, that's important too. \n It is your duty to save a kidnapped princess. The Troll and his trusty Lion have terrible plans for her, and it's up to you to stop them!",
    extraImage:["RollingforRoyalty_1","RollingforRoyalty_2","RollingforRoyalty_3","RollingforRoyalty_4"],
    author:["Bas_Hoogeboom"]),
GameProfile(id:2,name:"Diepound",score:4264,hours:"45 hours",genre:"Shooter",
            size:"22MB",imageName:"DiePound_main",description:"Ground-pound 'em up, your jump distance will be determined by dice rolls.\n[Controls] \n WASD/Arrow keys - move \nMouse click - perform diepound",extraImage:["DiePound_1","DiePound_2","DiePound_3"],author:["LightPotato"]),
GameProfile(id:3,name:"Roll Of The Dice",score:4255,hours:"48 hours",genre:"Puzzle",size:"17MB",imageName:"RollOfTheDice_main",description:"Roll Of The Dice is a game where you roll a rainbow-coloured dice around the world and paint designs on paper. There are 7 puzzles, in which you have to strategically roll your dice to paint the designated design. This game is a lot harder than it seems.",extraImage:["RollOfTheDice_1","RollOfTheDice_2"],author:["escapadegames"]),
GameProfile(id:4,name:"Randomancer",score:4606,hours:"47 hours",genre:"Action Strategy",size:"6MB",imageName:"Randomancer_main",description:"In this action lane defense game your units are your dice! Roll the dice onto the battle field to place your units.\nControls: Only mouse clicking necessary! Drag dice from the tray area at the bottom of the screen onto the field. Then plant the rolled unit onto one of the five lanes.",extraImage:["Randomancer_1","Randomancer_2","Randomancer_3","Randomancer_4"],author:["Riuku","Reaktori","Rage","Woffelson","Joey"]),
GameProfile(id:5,name:"GIMIKO",score:4445,hours:"47 hours",genre:"Fighting",size:"HTML5",imageName:"GIMMIKO_main",description:"Defend your shrine against waves of Yokai using magic Gimmick dice in this wacky folklore roguelike!",extraImage:["GIMMIKO_1","GIMMIKO_2","GIMMIKO_3","GIMMIKO_4"],author:["Zizou","Prutte","Ayekerik"]),
    GameProfile(id:6,name:"Not your Pawn!",score:4302,hours:"47 hours",genre:"Puzzle role playing",size:"HTML5",imageName:"NotYourPawn_main",description:"In this Action-Arcade game, you play as a sentient pawn fighting other chess pieces. Throw dice to roll them and hit your enemies with the correct numbers.",extraImage:["NotYourPawn_1","NotYourPawn_2","NotYourPawn_3"],author:["ButteredCoffee","JustHellygar","BENI-O"]),
GameProfile(id:7,name:"On a Roll",score:4333,hours:"43 hours",genre:"Action",size:"22MB",imageName:"OnARoll_main",description:"Play as a relentless roll of die. A nasty forest inhabited by flies is ruining your night of poker. Roll and squash bugs while shooting down any that try and flee. The only catch is... Each move only goes as far as you roll the dice!",extraImage:["OnARoll_1","OnARoll_2","OnARoll_3","OnARoll_4"],author:["Gangrue"]),
GameProfile(id:8,name:"Dice of Fate",score:4244,hours:"46 hours",genre:"Arcade",size:"42MB",imageName:"DiceOfFate_main",description:"Roll the dice of fate and fight against dark creatures of a sinister underworld. This game is a Pachinko-inspired gambling adventure that let's you place pins on the playing field and use dice-rolls to fight monsters.",extraImage:["DiceOfFate_1","DiceOfFate_2"],author:["Twinfox","Eabian Euchs","f4n4tix"]),
GameProfile(id:9,name:"Dice is the way",score:4405,hours:"41 hours",genre:"Card game",size:"HTML5",imageName:"DiceIsTheWay_main",description:"Dice is the Way is a deck builder roguelike card game with a twist: you can change ANY number on the screen when you using the Roll The Dice card. \n Roll the dice, this is the way.",extraImage:["DiceIsTheWay_1","DiceIsTheWay_2","DiceIsTheWay_3"],author:["x310","Ringo","Alva Peng","ziyizeng"]),
GameProfile(id:10,name:"Berb Hike",score:4319,hours:"47 hours",genre:"Puzzle Adventure",size:"26MB",imageName:"BerbHike_main",description:"Walk Berb along dice faces and find the right path.",extraImage:["BerbHike_1","BerbHike_2","BerbHike_3"],author:["Darn","MeowVibes"]),
GameProfile(id:11,name:"Fire And Dice",score:4507,hours:"17 hours",genre:"Puzzle Strategy",size:"HTML5",imageName:"FireAndDice_main",description:"Dice up the competition before you're slain.",extraImage:["FireAndDice_1","FireAndDice_2","FireAndDice_3","FireAndDice_4"],author:["Golen","Matojeje","ArticFqx","LuxxArt"]),
GameProfile(id:12,name:"Rolling World",score:4229,hours:">48 hours",genre:"Puzzle",size:"HTML5",imageName:"RollingWorld_main",description:"Play as an adventurer who has entered the cryptic Rolling World in search of the legendary Orb. In order to progress, you must roll this cubic world to your advantage.",extraImage:["RollingWorld_1","RollingWorld_2","RollingWorld_3"],author:["Coffee789","ImpactOS","Vertigofy"]),
GameProfile(id:13,name:"Diemunition",score:4299,hours:"46 hours",genre:"Platform shooter survival",size:"HTML5",imageName:"Diemunition_main",description:"The shooter-platformer where you use dice as your platforms… and your ammunition!\nSurvive by jumping on the falling dice platforms and shooting enemies. But be careful – your gun has no ammo! The only way to shoot is to stand on a die to use the dots on its face as ammunition.\n Watch out! Once a die’s bullets are used up, it disappears, leaving you vulnerable to the acid below!",extraImage:["Diemunition_1","Diemunition_2","Diemunition_3"],author:["Jamadoo Games"," Amorphous","Zachary Richman","CWeed420","FartFish","Kira (aka Kiraroci)","MatheusCunegato"]),
GameProfile(id:14,name:"Maces and Dices",score:4252,hours:"46 hours",genre:"Strategy",size:"36MB",imageName:"MacesAndDices_main",description:"There are four types of dice: Move, Melee, Ranged and Dash. Use them to battle monsters in this turnbased game! Your dices are your HP too, so be sure to prioritize which ones you sacrifice by putting them on the rightmost side.",extraImage:["MacesAndDices_1","MacesAndDices_2","MacesAndDices_3"],author:["NitramiuZ"]),
GameProfile(id:15,name:"Jimmy Blitz and the Rocket Dice",score:4389,hours:"47 hours",genre:"Action",size:"HTML5",imageName:"JimmyBlitz_main",description:"We’re pullin’ the biggest casino heist in history, boss. Let’s dominate some games and take home the money with your ROCKET-POWERED DICE! \nIn order to pull this off, you’re gonna need to BOOST and FOCUS your way through ten casino puzzles, flipping those fully-loaded dice without getting caught. Make sure the casino patrons don’t notice your antics, or you’ll get thrown in the slammer!",extraImage:["JimmyBlitz_1","JimmyBlitz_2","JimmyBlitz_3"],author:["the good owl","Pefeper","Trent-Sama","MightyMuso"]),
GameProfile(id:16,name:"Oddwood",score:4373,hours:"48 hours",genre:"Action Shooter Survival",size:"47MB",imageName:"Oddwood_main",description:"A chaotic arcade game where your actions are controlled by a dice, stuck in Leshy's game.",extraImage:["Oddwood_1","Oddwood_2","Oddwood_3","Oddwood_4"],author:["Frogrammer","Crase da Crise"," PondGames","Bibiki"]),
GameProfile(id:17,name:"Curse Of the Dice Witch",score:4198,hours:"34 hours",genre:"Puzzle",size:"HTML5",imageName:"CurseWitch_main",description:"Curse of the Dice Witch is a game made for the GMTK game jam with a theme of roll of the dice. In the game, two friends get lost and meet the Dice Witch, who magically traps one friend inside of a dice. The other friend must roll him around as they work together to collect stars to undo the curse in a fun puzzle-platformer game.",extraImage:["CurseWitch_1","CurseWitch_2","CurseWitch_3"],author:["Jhunter"]),
GameProfile(id:18,name:"Dice With kali",score:4317,hours:"42 hours",genre:"Puzzle",size:"HTML5",imageName:"DiceWithKali_main",description:"Due to circumstances beyond the developer's control, you have found yourself in a battle for your soul against the Goddess of Death herself, Kali. Play her tricky dice matching game for the chance to cheat death... at least for a little while longer.",extraImage:["DiceWithKali_1","DiceWithKali_2","DiceWithKali_3"],author:["Ragtag Games"]),
GameProfile(id:19,name:"Where They Fall",score:4528,hours:"47 hours",genre:"Puzzle",size:"63MB",imageName:"WhereTheyFall_main",description:"Where they fall is a brief atmospheric story game centered around the art of cleromancy. You play as a Germanic seer, interpreting the will of the gods through the throw of rune pieces. Assist your chieftain in an upcoming conflict with Roman forces and give the best advice possible in order to survive. May Tyr grant you strength!",extraImage:["WhereTheyFall_1","WhereTheyFall_2","WhereTheyFall_3"],author:["Manatea"]),
GameProfile(id:20,name:"Roll- the Die",score:4152,hours:"46 hours",genre:"Platformer",size:"HTML5",imageName:"Roll-TheDie_main",description:"Roll is a die in a Tabletop Game Paint it!. One day, Roll fell off the table, into the realms of the fuzzy carpet dimension. In order to climb its way out, Roll must roll (no pun intended) and paint its faces, which let him stick to surfaces of the same color.",extraImage:["Roll-TheDie_1","Roll-TheDie_2","Roll-TheDie_3"],author:["Nir Zaid","RetrOfir","Kheison","Romaner811"])]



struct GameProfile: Identifiable, Codable{
    var id:Int
    var name: String
    var score:Double
    var hours:String
    var genre:String
    var size:String
    var imageName:String
    var image: Image{
        Image(imageName)
    }
    var description:String
    var extraImage:[String]
    var author:[String]
    func getAuthor()-> String{
        var temp=""
        for cur in author {
            temp+=cur+", "
        }
        return temp
    }
}
