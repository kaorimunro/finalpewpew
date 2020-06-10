//Game Objects
ArrayList<GameObject> objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #9058CB;
color pink   = #FFADF7;
color orange = #E97F02;
color lightpurple = #D4ADFF;
color blue  = #58C2F2;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey;


//text
PFont font;
int shadowOffset = 8;

//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(800, 800);
  rectMode(CENTER);
  noStroke();

  //fonts
  textAlign(CENTER, CENTER);

  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;

  //Game Object initializations
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  int i = 0;
  while(i <100) {
    objects.add(new Obstacle());
    i++;
  }
}

//##################################### DRAW ################################################

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
