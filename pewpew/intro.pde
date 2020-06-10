void intro() {
  //background
  background(black);

  fill(255, 85, 224);
  ellipse(400, 400, 850, 850);
  fill(255, 193, 244);
  ellipse(400, 400, 650, 650);
  fill(255, 242, 253);
  ellipse(400, 400, 450, 450);
  fill(255, 255, 255);
  ellipse(400, 400, 250, 250);



  //text title

  textSize(100);
  fill(pink);
  text("PEW PEW", width/2+shadowOffset, height/4+shadowOffset);
  fill(purple);
  text("PEW PEW", width/2, height/4);
}

void introClicks() {
  mode = GAME;
}
