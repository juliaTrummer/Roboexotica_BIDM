import processing.sound.*;

SoundFile soundZitrone;


Ingridient[] ingridients;

Ingridient whiskey;
Ingridient cranberry;
Ingridient coconut;
Ingridient mint;

Sensor base;
Sensor fruit;
Sensor sweetener;
Sensor finisher;

float sensorSize;

void setup() {
  size(1920/2, 1080/2);
  pixelDensity(displayDensity());

  //SOUNDS HINZUFÜGEN
  soundZitrone = new SoundFile(this, "");
  
  //ZUTATEN HINZUFÜGEN
  whiskey = new Ingridient(random(width), random(height), 50, "Whiskey", "Base", 0);
  cranberry = new Ingridient(random(width), random(height), 50, "Cranberry", "Fruit", 0);
  coconut = new Ingridient(random(width), random(height), 50, "Coconut", "Sweetener", 0);
  mint = new Ingridient(random(width), random(height), 50, "Mint", "Finisher", 0);
  
  ingridients = new Ingridient[]{whiskey, cranberry, coconut, mint};
  
  //SENSOR HINZUFÜGEN
  sensorSize = 150;
    
  base = new Sensor(width/5*1, height/2, sensorSize, "Base", false, false, 0);
  fruit = new Sensor(width/5*2, height/2, sensorSize, "Fruit", false, false, 1);
  sweetener = new Sensor(width/5*3, height/2, sensorSize, "Sweetener", false, false, 2);
  finisher = new Sensor(width/5*4, height/2, sensorSize, "Finisher", false, false, 3);
}

void draw() {
  background(20);
  
  //DRAW SHAKER
  fill(50);
  rect(width/2, height/5*4.15, sensorSize * 2, 100);
  
  //RENDER SENSORS
  base.render();
  fruit.render();
  sweetener.render();
  finisher.render();

  //DRAW INGRIDIENT
  whiskey.render();
  cranberry.render();
  coconut.render();
  mint.render();
  
  displayValues();
  
  
}
