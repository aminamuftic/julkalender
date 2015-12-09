boolean openedByTimer = false;
int currentOpenHatch = 0;
int MINUTE = 1000 * 60; 
int boxSize = 200;

int boxClicked() {
  int returnValue = 0;
  for (int i = 0; i < myBoxes.length; i++) {
    if (mouseX > myBoxes[i][0] && mouseX < myBoxes[i][0] + boxSize && mouseY > myBoxes[i][1] && mouseY < myBoxes[i][1] + boxSize) {
      returnValue = i + 1;
      openedByTimer = false;
      break;
    }
  }

  return returnValue;
}

//recepten som kommer upp när man trycker på luckorna
void mouseClicked () {
  currentOpenHatch = boxClicked();
}

void displayOpenHatch() {
  switch (currentOpenHatch) {
  case 0:
    break;
  case 1:
    image(tryffel, width/7, height/54, width/1.37, height/1.08);
    break;
  case 2:
    image(ischoklad, width/7, height/54, width/1.37, height/1.08);
    break;
  case 3:
    image(kottbullar, width/7, height/54, width/1.37, height/1.08);
    break;
  case 4:
    image(revbenspjall, width/7, height/54, width/1.37, height/1.08);
    break;
  case 5:
    image(knack, width/7, height/54, width/1.37, height/1.08);
    break;
  case 6:
    image(skinka, width/7, height/54, width/1.37, height/1.08);
    break;
  case 7:
    image(smorkola, width/7, height/54, width/1.37, height/1.08);
    break;
  case 8:
    image(rockyroad, width/7, height/54, width/1.37, height/1.08);
    break;
  case 9:
    image(brunkal, width/7, height/54, width/1.37, height/1.08);
    break;
  case 10:
    image(gronkal, width/7, height/54, width/1.37, height/1.08);
    break;
  case 11:
    image(fudge, width/7, height/54, width/1.37, height/1.08);
    break;
  case 12:
    image(saffranscupcake, width/7, height/54, width/1.37, height/1.08);
    break;
  case 13:
    image(ragsurr, width/7, height/54, width/1.37, height/1.08);
    break;
  case 14:
    image(sprodapepparkakor, width/7, height/54, width/1.37, height/1.08);
    break;
  case 15:
    image(fikon, width/7, height/54, width/1.37, height/1.08);
    break;
  case 16:
    image(cinnamonchip, width/7, height/54, width/1.37, height/1.08);
    break;
  case 17:
    image(saffranskorpor, width/7, height/54, width/1.37, height/1.08);
    break;
  case 18:
    image(lingonpepparkaka, width/7, height/54, width/1.37, height/1.08);
    break;
  case 19:
    image(lussekatter, width/7, height/54, width/1.37, height/1.08);
    break;
  case 20:
    image(varmchoklad, width/7, height/54, width/1.37, height/1.08);
    break;
  case 21:
    image(saffransgranola, width/7, height/54, width/1.37, height/1.08);
    break;
  case 22:
    image(valnotsrora, width/7, height/54, width/1.37, height/1.08);
    break;
  case 23:
    image(julgodis, width/7, height/54, width/1.37, height/1.08);
    break;
  case 24:
    image(julsnaps, width/7, height/54, width/1.37, height/1.08);
    break;
  }
}

//Tiden som öppnar luckan var tionde minut på det rätta datumet.
void openHatchesTimer() {
  int millisSinceAppStart = millis();
  //int minutesSinceAppStart = millisSinceAppStart / 1000;
  int minutesSinceAppStart = millisSinceAppStart / MINUTE;

  boolean hasTenMinutesPassed = tenMinutesPassed(minutesSinceAppStart);

  if (minutesSinceAppStart > 0 && hasTenMinutesPassed && currentOpenHatch == 0) {
    currentOpenHatch = day(); //öppnar dagens lucka
    openedByTimer = true;
  } else if (minutesSinceAppStart > 0 && currentOpenHatch != 0 && openedByTimer && minutesSinceAppStart % 10 >= 3) {
    currentOpenHatch = 0;
  }
}

boolean tenMinutesPassed(int passedTime) {
  if (passedTime % 10 == 0) {
    return true;
  } else {
    return false;
  }
}