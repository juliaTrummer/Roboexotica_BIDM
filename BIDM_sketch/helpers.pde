void displayValues() {
  textAlign(LEFT);
  fill(245);

  for (int i = 0; i < ingridients.length; i++) {
    text("LIVE INGRIDIENT DATA", 20, 20);
    text("type: " + ingridients[i].name, 20 + (width/5 * i), 20 + 20 * 1);
    text("id: " + ingridients[i].id, 20 + (width/5 * i), 20 + 20 * 1.8);
    text("phValue: " + ingridients[i].phValue, 20 + (width/5 * i), 20 + 20 * 2.6);
    text("weight: " + ingridients[i].weight, 20 + (width/5 * i), 20 + 20 * 3.4);
    text("colorValue: " + ingridients[i].colorValue, 20 + (width/5 * i), 20 + 20 * 4.2);
    text("amount: " + ingridients[i].amount, 20 + (width/5 * i), 20 + 20 * 5.0);
    text("electricity: " + ingridients[i].electricity, 20 + (width/5 * i), 20 + 20 * 5.8);
  }

  //text("LIVE INGRIDIENT DATA", 20, 20);
  //text("type: " + whiskey.name, 20, 20 + 20 * 1);
  //text("id: " + whiskey.id, 20, 20 + 20 * 1.8);
  //text("phValue: " + whiskey.phValue, 20, 20 + 20 * 2.6);
  //text("weight: " + whiskey.weight, 20, 20 + 20 * 3.4);
  //text("colorValue: " + whiskey.colorValue, 20, 20 + 20 * 4.2);
  //text("amount: " + whiskey.amount, 20, 20 + 20 * 5.0);
  //text("electricity: " + whiskey.electricity, 20, 20 + 20 * 5.8);
}
