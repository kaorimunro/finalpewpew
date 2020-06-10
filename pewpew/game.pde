void game() {
  background(blue);
  
  //game engine code
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  //spawn code
  if (frameCount % 60 ==0) { //modulus or mod
    objects.add(new Enemy());
  }
}

void gameClicks() {
}
