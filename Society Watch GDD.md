#  Society Watch

# DESIGN DOCUMENT

By skyquest for the Pirate Software Game Jam 15  
---

[**Introduction**](\#heading)	**[2](\#heading)**

[Game Summary](\#game-summary-pitch)	[2](\#game-summary-pitch)

[Inspiration](\#inspiration)	[2](\#inspiration)

[Player Experience](\#player-experience)	[2](\#player-experience)

[Platform](\#platform)	[3](\#platform)

[Development Software](\#development-software)	[3](\#development-software)

[Genre](\#genre)	[3](\#genre)

[Target Audience](\#target-audience)	[3](\#target-audience)

[**Concept**](\#concept)	**[3](\#concept)**

[Gameplay overview](\#gameplay-overview)	[3](\#gameplay-overview)

[Theme Interpretation (Shadows and Alchemy)](\#theme-interpretation-(shadow-and-alchemy))	[4](\#theme-interpretation-(shadow-and-alchemy))

[Primary Mechanics](\#primary-mechanics)	[4](\#primary-mechanics)

[Secondary Mechanics](\#secondary-mechanics)	[5](\#secondary-mechanics)

[**Art**](\#art)	**[6](\#art)**

[Theme Interpretation](\#theme-interpretation)	[6](\#theme-interpretation)

[Design](\#design)	[6](\#design)

[**Audio**](\#audio)	**[7](\#audio)**

[Music](\#music)	[7](\#music)

[Sound Effects](\#sound-effects)	[7](\#sound-effects)

[**Game Experience**](\#game-experience)	**[7](\#game-experience)**

[UI](\#ui)	[7](\#ui)

[Controls](\#controls)	[7](\#controls)

[**Development Timeline**](\#development-timeline)	**[8](\#development-timeline)**

##  {#heading}

## **Introduction**

**Acknowledgments**

* Shadows interpretation for shadow government/underground society/etc, suggestion for game name by **vintage\_euphoria**  
* Usage of cameras to capture evidence and develop them by **skyquest**

**Playtesters**

* Later will be noted here

	**Team**

* Solo by **skyquest**

  ### **Game Summary Pitch** {#game-summary-pitch}

	Society Watch is a stealth based game about investigating shadows and taking pictures of them and avoiding detection.

### **Inspiration** {#inspiration}

	**Robbery Bob**  
Robbery Bob makes the players control Bob, a thief who is tasked to **steal items and avoid detection**, the players have **limited visibility** of their surroundings.

**Fatal Frame**  
Fatal Frame is where the concept of camera usage came from, it’s based around characters who explore haunted locations with a special camera capable of capturing and combating ghosts, the players have  to solve puzzles and **uncover dark secrets while using the camera** for protection.

### **Player Experience** {#player-experience}

In a procedural generated map, the player has to sneak around and collect evidence using a camera, they might **find shadow governments/cults/anomalies** and must **avoid them at all costs**.

### **Platform** {#platform}

The game is developed to be released on your brain using neural link  
	

### **Development Software** {#development-software}

- Godot version 4.2.2 for programming  
- Aseprite version 1.3.7 for graphics and UI  
- LMMS version 1.2.2 for all music and SFX

### **Genre** {#genre}

Singleplayer, Mystery, Survival

### **Target Audience** {#target-audience}

This game is market towards audiences that loves the thrill of exploring **unknown locations** and easy to understand mechanics, casual game players can easily pick the game up

## **Concept** {#concept}

### **Gameplay overview** {#gameplay-overview}

The player controls an unknown character who works for an organization that sells information, the player has to **sneak around the map** and avoid the unknown entities, **collect evidence using a camera** and after collecting all the evidence and leaving the map, the player has to do **film processing using the films** to get the evidence from the camera. 

### **Theme Interpretation (Shadow and Alchemy)** {#theme-interpretation-(shadow-and-alchemy)}

**‘Shadow’ interpretation \- The player has to investigate the secrets in the shadows that are not supposed to be known.**

Within the context of a stealth game, the shadows are where unknown entities hide and the player has to use alchemy to develop the images in a darkroom. ***Take a picture of evidence of unknown entities and develop them using film processing.***

### **Primary Mechanics** {#primary-mechanics}

| Mechanic | Animated Mockup  *(Art not necessarily final)* |
| ----- | ----- |
|         **Walls**         a A stopping force to prevent a player too large to access a certain area. Otherwise to simply restrict movement. |  |
|          **Enemies**        a When player walks in sight of enemy, the player dies instantly, depending on enemy the death might be different animation |  |
|         **Traps**       a The traps have various forms but all of them has same goal, to kill the player |  |
|         **Evidence**       a Player has to go near evidence and take a picture and later has to process it |  |

	

### **Secondary Mechanics** {#secondary-mechanics}

| Mechanic | Animated Mockup  *(Art not necessarily final)* |
| ----- | :---: |
|         **Super Stealth**        a If player finds a cloak while searching, it will give player limited time that will hide player from enemy eyesight |  |
|         **Fame**       a Will increase on players success, which will earn players difficult missions |  |

## **Art** {#art}

### **Theme Interpretation** {#theme-interpretation}

The pear36 will be used for a color scheme which has a limited amount of colors, it has **rich colors** that can present the game in a pleasant variety of colors.

### **![][image1]**

### **Design** {#design}

A simple pixel art that can easily convey the game to players with **shades of colors** representing the light and dark, the design is simple with shadows **without a lightsource** on them to represent the shadow theme

## **Audio** {#audio}

### **Music** {#music}

Unfortunately I’m not an expert on music or anything, but I'm definitely gonna do my best by using references and using feedback, it will be approved by playtesters and friends, but I do listen to music and make playlists to listen to. Gonna use sounds by 99Sounds and do some hammering to make it look good, just need to be simple,

* 1 music that's played everywhere  
* Music when game is on progress

  ### **Sound Effects** {#sound-effects}

No clue about this, just gonna add sound effects that sounds good and get it approved by playtesters

## **Game Experience** {#game-experience}

### **UI** {#ui}

A simple box shaped UI’s with restricted color palette

### **Controls** {#controls}

**Keyboard**  
	Arrow keys / WASD  
**Gamepad**  
	Dpad

## **Development Timeline** {#development-timeline}

**MINIMUM VIABLE PRODUCT**

| \# | Assignment | Type | Status | Finish By | Notes |
| :---: | :---- | :---- | :---- | :---- | :---- |
| 1 | Design Document | Other | Finished | Jul 19, 2024 | Finished it on July 23, quite late |
| 2 | Create player and wall assets | Art | Finished | Jul 24, 2024 |  |
| 3 | Main menu theme | Audio | Finished | Jul 24, 2024 | Can be really short, player won’t be on main menu for long |
| 4 | UI / Main menu | Coding | Finished | Jul 24, 2024 | Button UI, screen transition, title screen |
| 5 | Level theme | Audio | Finished | Jul 25, 2024 | Should be more substantial and not annoying |
| 6 | Simple player movement | Coding | Finished | Jul 24, 2024 | Move player around the map and collide and die |
| 7 | Create enemy and traps assets | Art | Finished | Jul 25, 2024 | Multi cell masses act together to collide with walls |
| 8 | Enemies with player interactions | Coding | Finished | Jul 25, 2024 | Implement spike and holes mechanics |
| 9 | Evidence interaction | Coding | Finished | Jul 27, 2024 |  |
| 10 | Player animation | Art | Finished | Jun 25, 2022 | Idle blinks, movement polish |
| 11 | Sound effects | Audio | Finished | Jun 25, 2022 | Player movement, UI interaction |
| 12 | Any extra polish | Other | Not started | Jun 29, 2022 |  |
| 13 | SUBMIT | Other | In progress | Jul 31, 2024 | Create Itch Page and upload |

[image1]: <data:image/png;base64,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>