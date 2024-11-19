class Ingridient {
  // Meta-Daten
  int id;
  float x, y, w;
  String name;
  String type;

  // (mögliche) Sensordaten
  float phValue;
  float weight;
  color colorValue;
  float amount;
  float electricity;

  Ingridient(float x, float y, float w, String name, String type, int id) {
    this.id = id;
    this.x = x;
    this.y = y;
    this.w = w;
    this.type = type;
    this.name = name;

    this.phValue = random(0, 14);
    this.weight = random(0, 100); //grams
    this.colorValue = color(random(240), random(240), random(240));
    this.amount = random(0, 5);
    this.electricity = 0.0;
  }

  void moveItems() {
    if (mouseX > this.x - this.w/2 && mouseX < this.x + this.w/2 && mouseY > this.y - this.w/2 && mouseY < this.y + this.w/2) {
      if (mousePressed == true) {
        this.x = mouseX;
        this.y = mouseY;
      }
    }
  }

  void render() {
    moveItems();
    noStroke();
    //fill(random(240), random(240), random(240));
    //this.x = mouseX;
    //this.y = mouseY;

    fill(this.colorValue);
    square(this.x, this.y, this.w);
    
    fill(20);
    textAlign(CENTER);
    text(name, this.x, this.y + 2);
  }
}
