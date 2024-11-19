class Sensor {
  int id;
  float x, y, w;
  boolean isTriggered;
  boolean isSimilar;
  String type;

  Sensor(float x, float y, float w, String type, boolean isSimilar, boolean isTriggered, int id) {
    this.id = id;
    this.x = x;
    this.y = y;
    this.w = w;
    this.isTriggered = isTriggered;
    this.isSimilar = isSimilar;
    this.type = type;
  }

  void update() {
    //if (whiskey.x > this.x - this.w/2 && whiskey.x < this.x + this.w/2 && whiskey.y > this.y - this.w/2 && whiskey.y < this.y + this.w/2 && this.isTriggered == false) {
    //  this.isTriggered = true;
    //  println("*play sound*");
    //} else if (whiskey.x < this.x - this.w/2 && this.isTriggered == true || whiskey.x > this.x + this.w/2 && this.isTriggered == true || whiskey.y < this.y - this.w/2 && this.isTriggered == true || whiskey.y > this.y + this.w/2 && this.isTriggered == true) {
    //  this.isTriggered = false;
    //  println("stop");
    //}
    
    //for (Ingridient ingridient : ingridients) {
    //  if (ingridient.x > this.x - this.w/2 && ingridient.x < this.x + this.w/2 && ingridient.y > this.y - this.w/2 && ingridient.y < this.y + this.w/2 && this.isTriggered == false) {
    //    this.isTriggered = true;
    //    println("*play sound*");
    //  } else if (ingridient.x < this.x - this.w/2 && this.isTriggered == true || ingridient.x > this.x + this.w/2 && this.isTriggered == true || ingridient.y < this.y - this.w/2 && this.isTriggered == true || ingridient.y > this.y + this.w/2 && this.isTriggered == true) {
    //    this.isTriggered = false;
    //    println("stop");
    //  }
    //}
    
    boolean foundIngredientInRange = false;

    // Prüfe alle Zutaten
    for (Ingridient ingridient : ingridients) {
      boolean isInRange = ingridient.x > this.x - this.w/2 && ingridient.x < this.x + this.w/2 &&
                          ingridient.y > this.y - this.w/2 && ingridient.y < this.y + this.w/2;

      if (isInRange && ingridient.type == this.type) {
        this.isSimilar = true;
        foundIngredientInRange = true;
        break; // Eine Zutat im Bereich gefunden
      }
    }

    // Aktualisiere den Zustand
    this.isTriggered = foundIngredientInRange;
  }

  void changeColor() {
    if (this.isTriggered == true) {
      fill(240);
    } else {
      fill(40);
    }
  }
  
  void showInfo() {
    if (this.isTriggered == true) {
      fill(0, 200, 0);
    } else if (this.isTriggered == false) {
      fill(255, 0, 0);
    }
    
    text("Sensor " + this.type, this.x - this.w/2 + 10, this.y - this.w/2 + 20);
    text("id: " + this.id, this.x - this.w/2 + 10, this.y - this.w/2 + 40);
    text("isTriggered: " + this.isTriggered, this.x - this.w/2 + 10, this.y - this.w/2 + 60);
    text("isSimilar: " + this.isSimilar, this.x - this.w/2 + 10, this.y - this.w/2 + 80);
  }

  void render() {
    update();
    changeColor();

    rectMode(CENTER);
    square(this.x, this.y, this.w);
    
    showInfo();
  }
}
